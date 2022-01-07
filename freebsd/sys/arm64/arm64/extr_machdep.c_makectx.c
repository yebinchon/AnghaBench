
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_sp; int tf_elr; int tf_lr; int * tf_x; } ;
struct pcb {int pcb_sp; int pcb_pc; int * pcb_x; } ;


 int PCB_LR ;

void
makectx(struct trapframe *tf, struct pcb *pcb)
{
 int i;

 for (i = 0; i < PCB_LR; i++)
  pcb->pcb_x[i] = tf->tf_x[i];

 pcb->pcb_x[PCB_LR] = tf->tf_lr;
 pcb->pcb_pc = tf->tf_elr;
 pcb->pcb_sp = tf->tf_sp;
}
