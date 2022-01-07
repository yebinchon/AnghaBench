
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int SCR ;


 int * CLSP (int *) ;
 int getyx (int *,size_t,size_t) ;
 int * stdscr ;

int
cl_cursor(SCR *sp, size_t *yp, size_t *xp)
{
 WINDOW *win;
 win = CLSP(sp) ? CLSP(sp) : stdscr;







 getyx(win, *yp, *xp);




 return (0);
}
