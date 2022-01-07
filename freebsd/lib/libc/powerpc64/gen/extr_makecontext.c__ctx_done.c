
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mc_len; } ;
struct TYPE_6__ {int * uc_link; TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;


 int abort () ;
 int exit (int ) ;
 int setcontext (TYPE_2__ const*) ;

void
_ctx_done(ucontext_t *ucp)
{
 if (ucp->uc_link == ((void*)0))
  exit(0);
 else {

  ucp->uc_mcontext.mc_len = 0;

  setcontext((const ucontext_t *)ucp->uc_link);

  abort();
 }
}
