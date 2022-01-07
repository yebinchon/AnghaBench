
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * uc_link; } ;
typedef TYPE_1__ ucontext_t ;


 int abort () ;
 int exit (int ) ;
 int setcontext (TYPE_1__ const*) ;

void
ctx_done(ucontext_t *ucp)
{

 if (ucp->uc_link == ((void*)0)) {
  exit(0);
 } else {
  setcontext((const ucontext_t *)ucp->uc_link);
  abort();
 }
}
