
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int _flags; } ;
typedef TYPE_1__ WINDOW ;
typedef int SCREEN ;


 int * CURRENT_SCREEN ;
 int _HASMOVED ;
 int _ISPAD ;
 int _nc_lock_global (int ) ;
 int * _nc_screen_of (TYPE_1__*) ;
 int _nc_set_screen (int *) ;
 int _nc_unlock_global (int ) ;
 scalar_t__ _nc_use_pthreads ;
 int curses ;
 scalar_t__ is_wintouched (TYPE_1__*) ;
 int wrefresh (TYPE_1__*) ;

__attribute__((used)) static void
recur_wrefresh(WINDOW *win)
{
 if ((is_wintouched(win) || (win->_flags & _HASMOVED))
     && !(win->_flags & _ISPAD)) {
 wrefresh(win);
    }
}
