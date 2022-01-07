
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int * uc_link; } ;
typedef TYPE_1__ ucontext_t ;
typedef int (* func_t ) (int ,int ,int ,int ,int ,int ) ;


 int abort () ;
 int exit (int ) ;
 int setcontext (TYPE_1__ const*) ;
 int stub1 (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
makectx_wrapper(ucontext_t *ucp, func_t func, uint64_t *args)
{
 (*func)(args[0], args[1], args[2], args[3], args[4], args[5]);
 if (ucp->uc_link == ((void*)0))
  exit(0);
 setcontext((const ucontext_t *)ucp->uc_link);

 abort();

}
