
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int chtype ;
struct TYPE_7__ {int _cury; int _curx; } ;
typedef TYPE_1__ WINDOW ;


 int getyx (TYPE_1__*,int,int) ;
 int waddch (TYPE_1__*,int ) ;
 int waddstr (TYPE_1__*,char*) ;
 int wmove (TYPE_1__*,int,int) ;

__attribute__((used)) static char *
WipeOut(WINDOW *win, int y, int x, char *first, char *last, int echoed)
{
    if (last > first) {
 *--last = '\0';
 if (echoed) {
     int y1 = win->_cury;
     int x1 = win->_curx;

     wmove(win, y, x);
     waddstr(win, first);
     getyx(win, y, x);
     while (win->_cury < y1
     || (win->_cury == y1 && win->_curx < x1))
  waddch(win, (chtype) ' ');

     wmove(win, y, x);
 }
    }
    return last;
}
