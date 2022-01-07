
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_tid; struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct linux_emuldata {int* child_set_tid; int em_tid; } ;


 int KASSERT (int ,char*) ;
 int LINUX_CTR1 (int ,char*,int ) ;
 int LINUX_CTR4 (int ,char*,int ,int*,int ,int) ;
 int copyout (int *,int*,int) ;
 struct linux_emuldata* em_find (struct thread*) ;
 int schedtail ;

void
linux_schedtail(struct thread *td)
{
 struct linux_emuldata *em;
 struct proc *p;
 int error = 0;
 int *child_set_tid;

 p = td->td_proc;

 em = em_find(td);
 KASSERT(em != ((void*)0), ("linux_schedtail: thread emuldata not found.\n"));
 child_set_tid = em->child_set_tid;

 if (child_set_tid != ((void*)0)) {
  error = copyout(&em->em_tid, child_set_tid,
      sizeof(em->em_tid));
  LINUX_CTR4(schedtail, "thread(%d) %p stored %d error %d",
      td->td_tid, child_set_tid, em->em_tid, error);
 } else
  LINUX_CTR1(schedtail, "thread(%d)", em->em_tid);
}
