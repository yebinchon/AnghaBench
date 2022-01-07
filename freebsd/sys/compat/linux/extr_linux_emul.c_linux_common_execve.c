
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;
struct thread {int * td_emuldata; struct proc* td_proc; } ;
struct proc {int * p_emuldata; } ;
struct linux_pemuldata {struct linux_pemuldata* epoll; } ;
struct linux_emuldata {struct linux_emuldata* epoll; } ;
struct image_args {int dummy; } ;
struct epoll_emuldata {struct epoll_emuldata* epoll; } ;


 int EJUSTRETURN ;
 int KASSERT (int ,char*) ;
 int M_EPOLL ;
 int M_LINUX ;
 int M_TEMP ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ SV_ABI_LINUX ;
 scalar_t__ SV_CURPROC_ABI () ;
 struct linux_pemuldata* em_find (struct thread*) ;
 int free (struct linux_pemuldata*,int ) ;
 int kern_execve (struct thread*,struct image_args*,int *) ;
 struct linux_pemuldata* pem_find (struct proc*) ;
 int post_execve (struct thread*,int,struct vmspace*) ;
 int pre_execve (struct thread*,struct vmspace**) ;

int
linux_common_execve(struct thread *td, struct image_args *eargs)
{
 struct linux_pemuldata *pem;
 struct epoll_emuldata *emd;
 struct vmspace *oldvmspace;
 struct linux_emuldata *em;
 struct proc *p;
 int error;

 p = td->td_proc;

 error = pre_execve(td, &oldvmspace);
 if (error != 0)
  return (error);

 error = kern_execve(td, eargs, ((void*)0));
 post_execve(td, error, oldvmspace);
 if (error != EJUSTRETURN)
  return (error);





 if (SV_CURPROC_ABI() != SV_ABI_LINUX) {
  PROC_LOCK(p);
  em = em_find(td);
  KASSERT(em != ((void*)0), ("proc_exec: thread emuldata not found.\n"));
  td->td_emuldata = ((void*)0);

  pem = pem_find(p);
  KASSERT(pem != ((void*)0), ("proc_exec: proc pemuldata not found.\n"));
  p->p_emuldata = ((void*)0);
  PROC_UNLOCK(p);

  if (pem->epoll != ((void*)0)) {
   emd = pem->epoll;
   pem->epoll = ((void*)0);
   free(emd, M_EPOLL);
  }

  free(em, M_TEMP);
  free(pem, M_LINUX);
 }
 return (EJUSTRETURN);
}
