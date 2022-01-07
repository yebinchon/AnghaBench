
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * oact; } ;
struct TYPE_6__ {int progname; } ;
typedef int SCR ;
typedef TYPE_1__ GS ;
typedef TYPE_2__ CL_PRIVATE ;


 TYPE_2__* GCLP (TYPE_1__*) ;
 size_t INDX_HUP ;
 size_t INDX_INT ;
 size_t INDX_TERM ;
 size_t INDX_WINCH ;
 int M_SYSERR ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SIGWINCH ;
 int __sigblockset ;
 int h_hup ;
 int h_int ;
 int h_term ;
 int h_winch ;
 int msgq (int *,int ,char*) ;
 int perr (int ,int *) ;
 scalar_t__ setsig (int ,int *,int ) ;
 scalar_t__ sigaddset (int *,int ) ;
 int sigemptyset (int *) ;

int
sig_init(GS *gp, SCR *sp)
{
 CL_PRIVATE *clp;

 clp = GCLP(gp);

 if (sp == ((void*)0)) {
  (void)sigemptyset(&__sigblockset);
  if (sigaddset(&__sigblockset, SIGHUP) ||
      setsig(SIGHUP, &clp->oact[INDX_HUP], h_hup) ||
      sigaddset(&__sigblockset, SIGINT) ||
      setsig(SIGINT, &clp->oact[INDX_INT], h_int) ||
      sigaddset(&__sigblockset, SIGTERM) ||
      setsig(SIGTERM, &clp->oact[INDX_TERM], h_term)





      ) {
   perr(gp->progname, ((void*)0));
   return (1);
  }
 } else
  if (setsig(SIGHUP, ((void*)0), h_hup) ||
      setsig(SIGINT, ((void*)0), h_int) ||
      setsig(SIGTERM, ((void*)0), h_term)




      ) {
   msgq(sp, M_SYSERR, "signal-reset");
  }
 return (0);
}
