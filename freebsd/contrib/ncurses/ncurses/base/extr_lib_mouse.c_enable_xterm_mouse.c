
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _emxmouse_activated; int _mouse_active; int _mouse_xtermcap; } ;
typedef TYPE_1__ SCREEN ;


 int NCURSES_PUTP2 (char*,int ) ;
 int TPARM_1 (int ,int) ;

__attribute__((used)) static void
enable_xterm_mouse(SCREEN *sp, int enable)
{



    NCURSES_PUTP2("xterm-mouse", TPARM_1(sp->_mouse_xtermcap, enable));

    sp->_mouse_active = enable;
}
