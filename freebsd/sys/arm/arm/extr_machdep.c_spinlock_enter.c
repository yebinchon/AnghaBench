
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int md_spinlock_count; int md_saved_cspr; } ;
struct thread {TYPE_1__ td_md; } ;
typedef int register_t ;


 int PSR_F ;
 int PSR_I ;
 int critical_enter () ;
 struct thread* curthread ;
 int disable_interrupts (int) ;

void
spinlock_enter(void)
{
 struct thread *td;
 register_t cspr;

 td = curthread;
 if (td->td_md.md_spinlock_count == 0) {
  cspr = disable_interrupts(PSR_I | PSR_F);
  td->td_md.md_spinlock_count = 1;
  td->td_md.md_saved_cspr = cspr;
 } else
  td->td_md.md_spinlock_count++;
 critical_enter();
}
