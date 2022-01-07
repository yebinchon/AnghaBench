
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_5__ {size_t coff; size_t cols; } ;
typedef TYPE_1__ SCR ;


 int * CLSP (TYPE_1__*) ;
 scalar_t__ ERR ;
 scalar_t__ IS_VSPLIT (TYPE_1__*) ;
 int getyx (int *,size_t,size_t) ;
 int * stdscr ;
 int waddch (int *,char) ;
 scalar_t__ wclrtoeol (int *) ;
 int wmove (int *,size_t,size_t) ;

int
cl_clrtoeol(SCR *sp)
{
 WINDOW *win;




 win = CLSP(sp) ? CLSP(sp) : stdscr;
  return (wclrtoeol(win) == ERR);
}
