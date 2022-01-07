
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * oact; } ;
typedef int GS ;
typedef TYPE_1__ CL_PRIVATE ;


 TYPE_1__* GCLP (int *) ;
 size_t INDX_HUP ;
 size_t INDX_INT ;
 size_t INDX_TERM ;
 size_t INDX_WINCH ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SIGWINCH ;
 int sigaction (int ,int *,int *) ;

__attribute__((used)) static void
sig_end(GS *gp)
{
 CL_PRIVATE *clp;

 clp = GCLP(gp);
 (void)sigaction(SIGHUP, ((void*)0), &clp->oact[INDX_HUP]);
 (void)sigaction(SIGINT, ((void*)0), &clp->oact[INDX_INT]);
 (void)sigaction(SIGTERM, ((void*)0), &clp->oact[INDX_TERM]);



}
