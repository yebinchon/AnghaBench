
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_retval; } ;
struct linux_gettid_args {int dummy; } ;
struct linux_emuldata {int em_tid; } ;


 int KASSERT (int ,char*) ;
 struct linux_emuldata* em_find (struct thread*) ;

int
linux_gettid(struct thread *td, struct linux_gettid_args *args)
{
 struct linux_emuldata *em;

 em = em_find(td);
 KASSERT(em != ((void*)0), ("gettid: emuldata not found.\n"));

 td->td_retval[0] = em->em_tid;

 return (0);
}
