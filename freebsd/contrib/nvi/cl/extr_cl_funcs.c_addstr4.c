
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int SCR ;
typedef int CL_PRIVATE ;


 int * CLP (int *) ;
 int * CLSP (int *) ;
 scalar_t__ ERR ;
 int F_ISSET (int *,int ) ;
 scalar_t__ IS_SPLIT (int *) ;
 int LASTLINE (int *) ;
 size_t RLNO (int *,int ) ;
 int SC_SCR_EXWROTE ;
 int getyx (int *,size_t,size_t) ;
 int * stdscr ;
 scalar_t__ waddnstr (int *,void*,size_t) ;
 scalar_t__ waddnwstr (int *,void*,size_t) ;
 int wstandend (int *) ;
 int wstandout (int *) ;

__attribute__((used)) static int
addstr4(SCR *sp, void *str, size_t len, int wide)
{
 CL_PRIVATE *clp;
 WINDOW *win;
 size_t y, x;
 int iv;

 clp = CLP(sp);
 win = CLSP(sp) ? CLSP(sp) : stdscr;





 iv = 0;
 getyx(win, y, x);
 if (!F_ISSET(sp, SC_SCR_EXWROTE) &&
     y == RLNO(sp, LASTLINE(sp)) && IS_SPLIT(sp)) {
  iv = 1;
  (void)wstandout(win);
 }







     if (waddnstr(win, str, len) == ERR)
      return (1);

 if (iv)
  (void)wstandend(win);
 return (0);
}
