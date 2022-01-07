
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int * uc_link; } ;
typedef TYPE_1__ ucontext_t ;
typedef int (* handler_t ) (int ,int ,int ) ;


 int abort () ;
 int exit (int ) ;
 int setcontext (TYPE_1__ const*) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void
ctx_wrapper(ucontext_t *ucp, handler_t func, uint32_t sig, uint32_t sig_si,
     uint32_t sig_uc)
{

 (*func)(sig, sig_si, sig_uc);
 if (ucp->uc_link == ((void*)0))
  exit(0);
 setcontext((const ucontext_t *)ucp->uc_link);

 abort();

}
