
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int WINDOW ;
struct TYPE_17__ {int * cup; int rows; struct TYPE_17__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_1__ GS ;
typedef TYPE_1__ CL_PRIVATE ;


 TYPE_1__* CLP (TYPE_1__*) ;
 int * CLSP (TYPE_1__*) ;
 int CL_IN_EX ;
 int CL_SCR_EX_INIT ;
 int CL_SCR_VI_INIT ;
 int F_CLR (TYPE_1__*,int) ;
 scalar_t__ F_ISSET (TYPE_1__*,int) ;
 int F_SET (TYPE_1__*,int) ;
 int G_SRESTART ;
 scalar_t__ LF_ISSET (int) ;
 int O_COLUMNS ;
 int O_LINES ;
 scalar_t__ O_VAL (TYPE_1__*,int ) ;
 scalar_t__ RLNO (TYPE_1__*,int ) ;
 int SC_EX ;
 int SC_SCR_EX ;
 int SC_SCR_VI ;
 int SC_VI ;
 int * TAILQ_NEXT (TYPE_1__*,int ) ;
 scalar_t__ cl_ex_init (TYPE_1__*) ;
 int cl_putchar ;
 scalar_t__ cl_quit (TYPE_1__*) ;
 scalar_t__ cl_vi_init (TYPE_1__*) ;
 int q ;
 scalar_t__ resizeterm (scalar_t__,scalar_t__) ;
 int * stdscr ;
 int tgoto (int *,int ,scalar_t__) ;
 int tputs (int ,int,int ) ;
 int wclrtobot (int *) ;
 int wmove (int *,scalar_t__,int ) ;
 int wrefresh (int *) ;

int
cl_screen(SCR *sp, u_int32_t flags)
{
 CL_PRIVATE *clp;
 WINDOW *win;
 GS *gp;

 gp = sp->gp;
 clp = CLP(sp);
 win = CLSP(sp) ? CLSP(sp) : stdscr;


 if (F_ISSET(gp, G_SRESTART)) {
  if ((!F_ISSET(sp, SC_SCR_EX | SC_SCR_VI) ||
       resizeterm(O_VAL(sp, O_LINES), O_VAL(sp, O_COLUMNS))) &&
      cl_quit(gp))
   return (1);
  F_CLR(gp, G_SRESTART);
 }


 if ((LF_ISSET(SC_EX) && F_ISSET(sp, SC_SCR_EX)) ||
     (LF_ISSET(SC_VI) && F_ISSET(sp, SC_SCR_VI)))
  return (0);
 if (F_ISSET(sp, SC_SCR_EX))
  F_CLR(sp, SC_SCR_EX);
 if (F_ISSET(sp, SC_SCR_VI)) {
  F_CLR(sp, SC_SCR_VI);

  if (TAILQ_NEXT(sp, q) != ((void*)0)) {
   (void)wmove(win, RLNO(sp, sp->rows), 0);
   wclrtobot(win);
  }
  (void)wmove(win, RLNO(sp, sp->rows) - 1, 0);
  wrefresh(win);
 }


 if (LF_ISSET(SC_EX)) {
  if (cl_ex_init(sp))
   return (1);
  F_SET(clp, CL_IN_EX | CL_SCR_EX_INIT);





  if (F_ISSET(sp, SC_EX) && clp->cup != ((void*)0))
   tputs(tgoto(clp->cup,
       0, O_VAL(sp, O_LINES) - 1), 1, cl_putchar);
 } else {
  if (cl_vi_init(sp))
   return (1);
  F_CLR(clp, CL_IN_EX);
  F_SET(clp, CL_SCR_VI_INIT);
 }
 return (0);
}
