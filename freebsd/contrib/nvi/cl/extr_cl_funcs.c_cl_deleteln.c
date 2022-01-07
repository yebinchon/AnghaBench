
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int SCR ;
typedef int CL_PRIVATE ;


 int A_NORMAL ;
 int * CLP (int *) ;
 int * CLSP (int *) ;
 scalar_t__ ERR ;
 int F_ISSET (int *,int ) ;
 scalar_t__ IS_SPLIT (int *) ;
 int LASTLINE (int *) ;
 int RLNO (int *,int ) ;
 int SC_SCR_EXWROTE ;
 int getyx (int *,size_t,size_t) ;
 int mvwchgat (int *,int ,int ,int,int ,int ,int *) ;
 int * stdscr ;
 scalar_t__ wdeleteln (int *) ;
 int wmove (int *,size_t,size_t) ;

int
cl_deleteln(SCR *sp)
{
 CL_PRIVATE *clp;
 WINDOW *win;
 size_t y, x;

 clp = CLP(sp);
 win = CLSP(sp) ? CLSP(sp) : stdscr;
 if (!F_ISSET(sp, SC_SCR_EXWROTE) && IS_SPLIT(sp)) {
  getyx(win, y, x);
  mvwchgat(win, RLNO(sp, LASTLINE(sp)), 0, -1, A_NORMAL, 0, ((void*)0));
  (void)wmove(win, y, x);
 }





 return (wdeleteln(win) == ERR);
}
