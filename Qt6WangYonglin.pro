QT += gui core gui multimedia opengl widgets

TEMPLATE = lib
DEFINES += QTWANG_LIBRARY
include(version.pri)
CONFIG += c++11
# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
INCLUDEPATH += $$PWD/include
HEADERS += \
    QSoundPlayer.h \
    QSoundRecorder.h \
    QThreader.h \
    QWangOpenGL.h \
    QtWangYonglin_global.h


SOURCES += \
    QSoundPlayer.cpp \
    QSoundRecorder.cpp \
    QThreader.cpp \
    QWangOpenGL.cpp




# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    README.md
RESOURCES += \
    resources.qrc

