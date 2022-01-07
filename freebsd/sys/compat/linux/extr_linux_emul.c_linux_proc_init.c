
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; struct linux_emuldata* td_emuldata; int td_tid; } ;
struct proc {int p_pid; struct linux_pemuldata* p_emuldata; } ;
struct linux_pemuldata {struct epoll_emuldata* epoll; scalar_t__ persona; int pem_sx; } ;
struct linux_emuldata {int * child_set_tid; int * child_clear_tid; int * robust_futexes; scalar_t__ flags; int em_tid; } ;
struct epoll_emuldata {int dummy; } ;


 int KASSERT (int ,char*) ;
 int LINUX_CLONE_THREAD ;
 int LINUX_CTR1 (int ,char*,int ) ;
 int M_EPOLL ;
 int M_LINUX ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 struct linux_emuldata* em_find (struct thread*) ;
 int free (struct epoll_emuldata*,int ) ;
 void* malloc (int,int ,int) ;
 struct linux_pemuldata* pem_find (struct proc*) ;
 int proc_init ;
 int sx_init (int *,char*) ;

void
linux_proc_init(struct thread *td, struct thread *newtd, int flags)
{
 struct linux_emuldata *em;
 struct linux_pemuldata *pem;
 struct epoll_emuldata *emd;
 struct proc *p;

 if (newtd != ((void*)0)) {
  p = newtd->td_proc;


  em = malloc(sizeof(*em), M_TEMP, M_WAITOK | M_ZERO);
  if (flags & LINUX_CLONE_THREAD) {
   LINUX_CTR1(proc_init, "thread newtd(%d)",
       newtd->td_tid);

   em->em_tid = newtd->td_tid;
  } else {
   LINUX_CTR1(proc_init, "fork newtd(%d)", p->p_pid);

   em->em_tid = p->p_pid;

   pem = malloc(sizeof(*pem), M_LINUX, M_WAITOK | M_ZERO);
   sx_init(&pem->pem_sx, "lpemlk");
   p->p_emuldata = pem;
  }
  newtd->td_emuldata = em;
 } else {
  p = td->td_proc;


  LINUX_CTR1(proc_init, "exec newtd(%d)", p->p_pid);


  em = em_find(td);
  KASSERT(em != ((void*)0), ("proc_init: emuldata not found in exec case.\n"));

  em->em_tid = p->p_pid;
  em->flags = 0;
  em->robust_futexes = ((void*)0);
  em->child_clear_tid = ((void*)0);
  em->child_set_tid = ((void*)0);


  pem = pem_find(p);
  KASSERT(pem != ((void*)0), ("proc_exit: proc emuldata not found.\n"));
  pem->persona = 0;
  if (pem->epoll != ((void*)0)) {
   emd = pem->epoll;
   pem->epoll = ((void*)0);
   free(emd, M_EPOLL);
  }
 }

}
