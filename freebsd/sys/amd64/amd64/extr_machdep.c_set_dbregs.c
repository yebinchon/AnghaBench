
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {struct pcb* td_pcb; TYPE_1__* td_frame; } ;
struct pcb {int pcb_dr0; int pcb_dr1; int pcb_dr2; int pcb_dr3; int pcb_dr6; int pcb_dr7; } ;
struct dbreg {int* dr; } ;
struct TYPE_2__ {scalar_t__ tf_cs; } ;


 int DBREG_DR7_ACCESS (int,int) ;
 scalar_t__ DBREG_DR7_ENABLED (int,int) ;
 scalar_t__ DBREG_DR7_LEN (int,int) ;
 scalar_t__ DBREG_DR7_LEN_8 ;
 int EINVAL ;
 int PCB_DBREGS ;
 int VM_MAXUSER_ADDRESS ;
 scalar_t__ _ucode32sel ;
 int load_dr0 (int) ;
 int load_dr1 (int) ;
 int load_dr2 (int) ;
 int load_dr3 (int) ;
 int load_dr6 (int) ;
 int load_dr7 (int) ;
 int set_pcb_flags (struct pcb*,int ) ;

int
set_dbregs(struct thread *td, struct dbreg *dbregs)
{
 struct pcb *pcb;
 int i;

 if (td == ((void*)0)) {
  load_dr0(dbregs->dr[0]);
  load_dr1(dbregs->dr[1]);
  load_dr2(dbregs->dr[2]);
  load_dr3(dbregs->dr[3]);
  load_dr6(dbregs->dr[6]);
  load_dr7(dbregs->dr[7]);
 } else {







  for (i = 0; i < 4; i++) {
   if (DBREG_DR7_ACCESS(dbregs->dr[7], i) == 0x02)
    return (EINVAL);
   if (td->td_frame->tf_cs == _ucode32sel &&
       DBREG_DR7_LEN(dbregs->dr[7], i) == DBREG_DR7_LEN_8)
    return (EINVAL);
  }
  if ((dbregs->dr[6] & 0xffffffff00000000ul) != 0 ||
      (dbregs->dr[7] & 0xffffffff00000000ul) != 0)
   return (EINVAL);

  pcb = td->td_pcb;
  if (DBREG_DR7_ENABLED(dbregs->dr[7], 0)) {

   if (dbregs->dr[0] >= VM_MAXUSER_ADDRESS)
    return (EINVAL);
  }
  if (DBREG_DR7_ENABLED(dbregs->dr[7], 1)) {

   if (dbregs->dr[1] >= VM_MAXUSER_ADDRESS)
    return (EINVAL);
  }
  if (DBREG_DR7_ENABLED(dbregs->dr[7], 2)) {

   if (dbregs->dr[2] >= VM_MAXUSER_ADDRESS)
    return (EINVAL);
  }
  if (DBREG_DR7_ENABLED(dbregs->dr[7], 3)) {

   if (dbregs->dr[3] >= VM_MAXUSER_ADDRESS)
    return (EINVAL);
  }

  pcb->pcb_dr0 = dbregs->dr[0];
  pcb->pcb_dr1 = dbregs->dr[1];
  pcb->pcb_dr2 = dbregs->dr[2];
  pcb->pcb_dr3 = dbregs->dr[3];
  pcb->pcb_dr6 = dbregs->dr[6];
  pcb->pcb_dr7 = dbregs->dr[7];

  set_pcb_flags(pcb, PCB_DBREGS);
 }

 return (0);
}
