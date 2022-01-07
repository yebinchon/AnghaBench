
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct pcb {int const pcb_flags; int pcb_gsbase; int pcb_fsbase; } ;
typedef int register_t ;


 int MSR_KGSBASE ;
 int const PCB_FULL_IRET ;
 scalar_t__ _ufssel ;
 scalar_t__ _ugssel ;
 struct pcb* curpcb ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int rdfsbase () ;
 int rdmsr (int ) ;
 scalar_t__ rfs () ;
 scalar_t__ rgs () ;
 int set_pcb_flags_raw (struct pcb*,int const) ;

__attribute__((used)) static void
set_pcb_flags_fsgsbase(struct pcb *pcb, const u_int flags)
{
 register_t r;

 if (curpcb == pcb &&
     (flags & PCB_FULL_IRET) != 0 &&
     (pcb->pcb_flags & PCB_FULL_IRET) == 0) {
  r = intr_disable();
  if ((pcb->pcb_flags & PCB_FULL_IRET) == 0) {
   if (rfs() == _ufssel)
    pcb->pcb_fsbase = rdfsbase();
   if (rgs() == _ugssel)
    pcb->pcb_gsbase = rdmsr(MSR_KGSBASE);
  }
  set_pcb_flags_raw(pcb, flags);
  intr_restore(r);
 } else {
  set_pcb_flags_raw(pcb, flags);
 }
}
