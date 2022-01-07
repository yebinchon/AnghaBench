
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct thread {int dummy; } ;
struct linux_sigaction_args {int * osa; int * nsa; int sig; } ;
struct TYPE_10__ {int __mask; } ;
struct TYPE_8__ {TYPE_7__ lsa_mask; int lsa_restorer; int lsa_flags; int lsa_handler; } ;
typedef TYPE_1__ l_sigaction_t ;
struct TYPE_9__ {int lsa_mask; int lsa_restorer; int lsa_flags; int lsa_handler; } ;
typedef TYPE_2__ l_osigaction_t ;


 int LINUX_SIGEMPTYSET (TYPE_7__) ;
 int copyin (int *,TYPE_2__*,int) ;
 int copyout (TYPE_2__*,int *,int) ;
 int linux_do_sigaction (struct thread*,int ,TYPE_1__*,TYPE_1__*) ;

int
linux_sigaction(struct thread *td, struct linux_sigaction_args *args)
{
 l_osigaction_t osa;
 l_sigaction_t act, oact;
 int error;

 if (args->nsa != ((void*)0)) {
  error = copyin(args->nsa, &osa, sizeof(l_osigaction_t));
  if (error)
   return (error);
  act.lsa_handler = osa.lsa_handler;
  act.lsa_flags = osa.lsa_flags;
  act.lsa_restorer = osa.lsa_restorer;
  LINUX_SIGEMPTYSET(act.lsa_mask);
  act.lsa_mask.__mask = osa.lsa_mask;
 }

 error = linux_do_sigaction(td, args->sig, args->nsa ? &act : ((void*)0),
     args->osa ? &oact : ((void*)0));

 if (args->osa != ((void*)0) && !error) {
  osa.lsa_handler = oact.lsa_handler;
  osa.lsa_flags = oact.lsa_flags;
  osa.lsa_restorer = oact.lsa_restorer;
  osa.lsa_mask = oact.lsa_mask.__mask;
  error = copyout(&osa, args->osa, sizeof(l_osigaction_t));
 }

 return (error);
}
