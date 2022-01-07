
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int SCR ;


 int * CLSP (int *) ;
 scalar_t__ ERR ;
 int * stdscr ;
 scalar_t__ winsertln (int *) ;

int
cl_insertln(SCR *sp)
{
 WINDOW *win;
 win = CLSP(sp) ? CLSP(sp) : stdscr;




 return (winsertln(win) == ERR);
}
