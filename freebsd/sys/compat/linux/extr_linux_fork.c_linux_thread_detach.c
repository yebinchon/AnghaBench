
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_sys_futex_args {int* uaddr; int val; scalar_t__ val3; int * uaddr2; int * timeout; int op; } ;
struct linux_emuldata {int* child_clear_tid; int em_tid; } ;


 int KASSERT (int ,char*) ;
 int LINUX_CTR1 (int ,char*,int ) ;
 int LINUX_CTR2 (int ,char*,int ,int*) ;
 int LINUX_FUTEX_WAKE ;
 struct linux_emuldata* em_find (struct thread*) ;
 int linux_msg (struct thread*,char*) ;
 int linux_sys_futex (struct thread*,struct linux_sys_futex_args*) ;
 int release_futexes (struct thread*,struct linux_emuldata*) ;
 int suword32 (int*,int ) ;
 int thread_detach ;

void
linux_thread_detach(struct thread *td)
{
 struct linux_sys_futex_args cup;
 struct linux_emuldata *em;
 int *child_clear_tid;
 int error;

 em = em_find(td);
 KASSERT(em != ((void*)0), ("thread_detach: emuldata not found.\n"));

 LINUX_CTR1(thread_detach, "thread(%d)", em->em_tid);

 release_futexes(td, em);

 child_clear_tid = em->child_clear_tid;

 if (child_clear_tid != ((void*)0)) {

  LINUX_CTR2(thread_detach, "thread(%d) %p",
      em->em_tid, child_clear_tid);

  error = suword32(child_clear_tid, 0);
  if (error != 0)
   return;

  cup.uaddr = child_clear_tid;
  cup.op = LINUX_FUTEX_WAKE;
  cup.val = 1;
  cup.timeout = ((void*)0);
  cup.uaddr2 = ((void*)0);
  cup.val3 = 0;
  error = linux_sys_futex(td, &cup);




  if (error != 0)
   linux_msg(td, "futex stuff in thread_detach failed.");
 }
}
