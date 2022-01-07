
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_proc; } ;
struct linux_pemuldata {int persona; } ;


 int LINUX_READ_IMPLIES_EXEC ;
 int PROT_EXEC ;
 int PROT_READ ;
 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 struct linux_pemuldata* pem_find (int ) ;

__attribute__((used)) static void
linux_fixup_prot(struct thread *td, int *prot)
{
 struct linux_pemuldata *pem;

 if (SV_PROC_FLAG(td->td_proc, SV_ILP32) && *prot & PROT_READ) {
  pem = pem_find(td->td_proc);
  if (pem->persona & LINUX_READ_IMPLIES_EXEC)
   *prot |= PROT_EXEC;
 }

}
