
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_5__ {int _called_wgetch; } ;
typedef TYPE_1__ SCREEN ;


 TYPE_1__* CURRENT_SCREEN ;
 int ERR ;
 int FALSE ;
 int MAXCOLUMNS ;
 int TRUE ;
 int _nc_lock_global (int ) ;
 TYPE_1__* _nc_screen_of (int *) ;
 int _nc_set_screen (TYPE_1__*) ;
 int _nc_unlock_global (int ) ;
 scalar_t__ _nc_use_pthreads ;
 int curses ;
 int wgetnstr (int *,char*,int ) ;

__attribute__((used)) static int
recur_wgetnstr(WINDOW *win, char *buf)
{
    SCREEN *sp = _nc_screen_of(win);
    int rc;

    if (sp != 0) {
 {
     sp->_called_wgetch = TRUE;
     rc = wgetnstr(win, buf, MAXCOLUMNS);
     sp->_called_wgetch = FALSE;
 }
    } else {
 rc = ERR;
    }
    return rc;
}
