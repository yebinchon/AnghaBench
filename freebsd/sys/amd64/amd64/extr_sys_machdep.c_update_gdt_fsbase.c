
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct user_segment_descriptor {int sd_lobase; int sd_hibase; } ;
struct thread {int td_pcb; } ;


 int PCB_FULL_IRET ;
 struct user_segment_descriptor* PCPU_GET (int ) ;
 int critical_enter () ;
 int critical_exit () ;
 struct thread* curthread ;
 int fs32p ;
 int set_pcb_flags (int ,int ) ;

void
update_gdt_fsbase(struct thread *td, uint32_t base)
{
 struct user_segment_descriptor *sd;

 if (td != curthread)
  return;
 set_pcb_flags(td->td_pcb, PCB_FULL_IRET);
 critical_enter();
 sd = PCPU_GET(fs32p);
 sd->sd_lobase = base & 0xffffff;
 sd->sd_hibase = (base >> 24) & 0xff;
 critical_exit();
}
