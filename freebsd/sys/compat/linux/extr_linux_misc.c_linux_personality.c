
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct thread {int* td_retval; struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct linux_personality_args {int per; } ;
struct linux_pemuldata {int persona; } ;


 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 struct linux_pemuldata* pem_find (struct proc*) ;

int
linux_personality(struct thread *td, struct linux_personality_args *args)
{
 struct linux_pemuldata *pem;
 struct proc *p = td->td_proc;
 uint32_t old;

 PROC_LOCK(p);
 pem = pem_find(p);
 old = pem->persona;
 if (args->per != 0xffffffff)
  pem->persona = args->per;
 PROC_UNLOCK(p);

 td->td_retval[0] = old;
 return (0);
}
