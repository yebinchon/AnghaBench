
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int on ;
struct TYPE_6__ {int _mouse_type; void* _mouse_active; int _mouse_wrap; int _mouse_resume; int _mouse_parse; int _mouse_inline; int _mouse_event; int _mouse_fd; scalar_t__ _mouse_bstate; int _mouse_initialized; } ;
typedef TYPE_1__ SCREEN ;
typedef int NCURSES_SP_NAME ;
typedef int NCURSES_SP_ARGx ;
typedef int NCURSES_SP_ARG ;


 void* FALSE ;





 int SIGUSR2 ;
 int SIG_IGN ;
 int T (char*) ;
 int TPUTS_TRACE (char*) ;
 void* TRUE ;
 int _nc_mouse_event ;
 int _nc_mouse_init (TYPE_1__*) ;
 int _nc_mouse_inline ;
 int _nc_mouse_parse ;
 int _nc_mouse_resume ;
 int _nc_mouse_wrap ;
 int enable_gpm_mouse (TYPE_1__*,void*) ;
 int enable_xterm_mouse (TYPE_1__*,int) ;
 int handle_sysmouse ;
 int * my_gpm_fd ;
 int signal (int ,int ) ;

__attribute__((used)) static void
mouse_activate(SCREEN *sp, int on)
{
    if (!on && !sp->_mouse_initialized)
 return;

    if (!_nc_mouse_init(sp))
 return;

    if (on) {
 sp->_mouse_bstate = 0;
 switch (sp->_mouse_type) {
 case 128:



     TPUTS_TRACE("xterm mouse initialization");
     enable_xterm_mouse(sp, 1);
     break;
 case 131:
     return;
 }



 sp->_mouse_event = _nc_mouse_event;
 sp->_mouse_inline = _nc_mouse_inline;
 sp->_mouse_parse = _nc_mouse_parse;
 sp->_mouse_resume = _nc_mouse_resume;
 sp->_mouse_wrap = _nc_mouse_wrap;
    } else {

 switch (sp->_mouse_type) {
 case 128:
     TPUTS_TRACE("xterm mouse deinitialization");
     enable_xterm_mouse(sp, 0);
     break;
 case 131:
     return;
 }
    }
    NCURSES_SP_NAME(_nc_flush) (NCURSES_SP_ARG);
}
