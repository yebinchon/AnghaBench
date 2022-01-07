
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_13__ {TYPE_1__* focus; scalar_t__ killersig; } ;
struct TYPE_12__ {scalar_t__ roff; scalar_t__ coff; scalar_t__ cols; int * gp; } ;
typedef TYPE_1__ SCR ;
typedef int GS ;
typedef TYPE_2__ CL_PRIVATE ;


 TYPE_2__* CLP (TYPE_1__*) ;
 int * CLSP (TYPE_1__*) ;
 int CL_LAYOUT ;
 scalar_t__ ERR ;
 int F_CLR (TYPE_2__*,int ) ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int cl_rdiv (TYPE_1__*) ;
 int clearok (int ,int) ;
 int curscr ;
 scalar_t__ doupdate () ;
 int getyx (int *,size_t,size_t) ;
 int q ;
 int * stdscr ;
 int wmove (int *,size_t,size_t) ;
 scalar_t__ wnoutrefresh (int *) ;

int
cl_refresh(SCR *sp, int repaint)
{
 GS *gp;
 CL_PRIVATE *clp;
 WINDOW *win;
 SCR *psp, *tsp;
 size_t y, x;

 gp = sp->gp;
 clp = CLP(sp);
 win = CLSP(sp) ? CLSP(sp) : stdscr;





 if (clp->killersig)
  return (0);
 if (repaint || F_ISSET(clp, CL_LAYOUT)) {
  getyx(stdscr, y, x);
  for (psp = sp; psp != ((void*)0); psp = TAILQ_NEXT(psp, q))
   for (tsp = TAILQ_NEXT(psp, q); tsp != ((void*)0);
       tsp = TAILQ_NEXT(tsp, q))
    if (psp->roff == tsp->roff) {
        if (psp->coff + psp->cols + 1 == tsp->coff)
     cl_rdiv(psp);
        else
        if (tsp->coff + tsp->cols + 1 == psp->coff)
     cl_rdiv(tsp);
    }
  (void)wmove(stdscr, y, x);
  F_CLR(clp, CL_LAYOUT);
 }






 if (repaint)
  clearok(curscr, 1);






 return (wnoutrefresh(stdscr) == ERR ||
  wnoutrefresh(win) == ERR ||
  (sp == clp->focus && doupdate() == ERR));
}
