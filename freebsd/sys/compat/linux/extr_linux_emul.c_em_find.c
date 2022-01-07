
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct linux_emuldata* td_emuldata; } ;
struct linux_emuldata {int dummy; } ;



struct linux_emuldata *
em_find(struct thread *td)
{
 struct linux_emuldata *em;

 em = td->td_emuldata;

 return (em);
}
