
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* _mouse_xtermcap; int _mouse_type; } ;
typedef TYPE_1__ SCREEN ;


 int M_XTERM ;
 int VALID_STRING (char*) ;
 char* tigetstr (char*) ;

__attribute__((used)) static void
init_xterm_mouse(SCREEN *sp)
{
    sp->_mouse_type = M_XTERM;
    sp->_mouse_xtermcap = tigetstr("XM");
    if (!VALID_STRING(sp->_mouse_xtermcap))
 sp->_mouse_xtermcap = "\033[?1000%?%p1%{1}%=%th%el%;";
}
