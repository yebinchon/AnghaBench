
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int md_spinlock_count; int md_saved_daif; } ;
struct thread {TYPE_1__ td_md; } ;
typedef int register_t ;


 int critical_enter () ;
 struct thread* curthread ;
 int intr_disable () ;

void
spinlock_enter(void)
{
 struct thread *td;
 register_t daif;

 td = curthread;
 if (td->td_md.md_spinlock_count == 0) {
  daif = intr_disable();
  td->td_md.md_spinlock_count = 1;
  td->td_md.md_saved_daif = daif;
 } else
  td->td_md.md_spinlock_count++;
 critical_enter();
}
