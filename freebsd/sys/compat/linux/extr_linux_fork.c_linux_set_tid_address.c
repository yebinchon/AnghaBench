
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_retval; } ;
struct linux_set_tid_address_args {int tidptr; } ;
struct linux_emuldata {int em_tid; int child_clear_tid; } ;


 int KASSERT (int ,char*) ;
 int LINUX_CTR3 (int ,char*,int ,int ,int ) ;
 struct linux_emuldata* em_find (struct thread*) ;
 int set_tid_address ;

int
linux_set_tid_address(struct thread *td, struct linux_set_tid_address_args *args)
{
 struct linux_emuldata *em;

 em = em_find(td);
 KASSERT(em != ((void*)0), ("set_tid_address: emuldata not found.\n"));

 em->child_clear_tid = args->tidptr;

 td->td_retval[0] = em->em_tid;

 LINUX_CTR3(set_tid_address, "tidptr(%d) %p, returns %d",
     em->em_tid, args->tidptr, td->td_retval[0]);

 return (0);
}
