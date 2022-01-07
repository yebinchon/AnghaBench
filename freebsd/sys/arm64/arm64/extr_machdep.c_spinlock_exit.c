
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ md_spinlock_count; int md_saved_daif; } ;
struct thread {TYPE_1__ td_md; } ;
typedef int register_t ;


 int critical_exit () ;
 struct thread* curthread ;
 int intr_restore (int ) ;

void
spinlock_exit(void)
{
 struct thread *td;
 register_t daif;

 td = curthread;
 critical_exit();
 daif = td->td_md.md_saved_daif;
 td->td_md.md_spinlock_count--;
 if (td->td_md.md_spinlock_count == 0)
  intr_restore(daif);
}
