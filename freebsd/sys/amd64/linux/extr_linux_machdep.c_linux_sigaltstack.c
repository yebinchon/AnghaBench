
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct thread {int dummy; } ;
struct linux_sigaltstack_args {int * uoss; int * uss; } ;
struct TYPE_8__ {int ss_flags; int ss_size; int ss_sp; } ;
typedef TYPE_1__ stack_t ;
typedef int lss ;
struct TYPE_9__ {int ss_flags; int ss_size; int ss_sp; } ;
typedef TYPE_2__ l_stack_t ;


 int LINUX_CTR2 (int ,char*,int *,int *) ;
 int PTRIN (int ) ;
 int PTROUT (int ) ;
 int bsd_to_linux_sigaltstack (int ) ;
 int copyin (int *,TYPE_2__*,int) ;
 int copyout (TYPE_2__*,int *,int) ;
 int kern_sigaltstack (struct thread*,TYPE_1__*,TYPE_1__*) ;
 int linux_to_bsd_sigaltstack (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int sigaltstack ;

int
linux_sigaltstack(struct thread *td, struct linux_sigaltstack_args *uap)
{
 stack_t ss, oss;
 l_stack_t lss;
 int error;

 memset(&lss, 0, sizeof(lss));
 LINUX_CTR2(sigaltstack, "%p, %p", uap->uss, uap->uoss);

 if (uap->uss != ((void*)0)) {
  error = copyin(uap->uss, &lss, sizeof(l_stack_t));
  if (error)
   return (error);

  ss.ss_sp = PTRIN(lss.ss_sp);
  ss.ss_size = lss.ss_size;
  ss.ss_flags = linux_to_bsd_sigaltstack(lss.ss_flags);
 }
 error = kern_sigaltstack(td, (uap->uss != ((void*)0)) ? &ss : ((void*)0),
     (uap->uoss != ((void*)0)) ? &oss : ((void*)0));
 if (!error && uap->uoss != ((void*)0)) {
  lss.ss_sp = PTROUT(oss.ss_sp);
  lss.ss_size = oss.ss_size;
  lss.ss_flags = bsd_to_linux_sigaltstack(oss.ss_flags);
  error = copyout(&lss, uap->uoss, sizeof(l_stack_t));
 }

 return (error);
}
