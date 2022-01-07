
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int scr_attr_t ;
typedef int WINDOW ;
struct TYPE_3__ {int * rmso; int * smso; int * rmcup; int ti_te; int * smcup; } ;
typedef int SCR ;
typedef TYPE_1__ CL_PRIVATE ;


 TYPE_1__* CLP (int *) ;
 int * CLSP (int *) ;
 int F_ISSET (int *,int) ;


 int SC_EX ;
 int SC_SCR_EXWROTE ;
 int TE_SENT ;
 int TI_SENT ;
 int abort () ;
 int cl_getcap (int *,char*,int **) ;
 int cl_putchar ;
 int fflush (int ) ;
 int stdout ;
 int * stdscr ;
 int tputs (int *,int,int ) ;
 int wstandend (int *) ;
 int wstandout (int *) ;

int
cl_attr(SCR *sp, scr_attr_t attribute, int on)
{
 CL_PRIVATE *clp;
 WINDOW *win;

 clp = CLP(sp);
 win = CLSP(sp) ? CLSP(sp) : stdscr;

 switch (attribute) {
 case 129:
 if (on) {
  if (clp->ti_te != TI_SENT) {
   clp->ti_te = TI_SENT;
   if (clp->smcup == ((void*)0))
    (void)cl_getcap(sp, "smcup", &clp->smcup);
   if (clp->smcup != ((void*)0))
    (void)tputs(clp->smcup, 1, cl_putchar);
  }
 } else
  if (clp->ti_te != TE_SENT) {
   clp->ti_te = TE_SENT;
   if (clp->rmcup == ((void*)0))
    (void)cl_getcap(sp, "rmcup", &clp->rmcup);
   if (clp->rmcup != ((void*)0))
    (void)tputs(clp->rmcup, 1, cl_putchar);
   (void)fflush(stdout);
  }
  (void)fflush(stdout);
  break;
 case 128:
  if (F_ISSET(sp, SC_EX | SC_SCR_EXWROTE)) {
   if (clp->smso == ((void*)0))
    return (1);
   if (on)
    (void)tputs(clp->smso, 1, cl_putchar);
   else
    (void)tputs(clp->rmso, 1, cl_putchar);
   (void)fflush(stdout);
  } else {
   if (on)
    (void)wstandout(win);
   else
    (void)wstandend(win);
  }
  break;
 default:
  abort();
 }
 return (0);
}
