
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int tf_usr_sp; int tf_usr_lr; int tf_pc; int tf_r12; int tf_r11; int tf_r10; int tf_r9; int tf_r8; int tf_r7; int tf_r6; int tf_r5; int tf_r4; } ;
struct TYPE_2__ {int sf_sp; int sf_lr; int sf_pc; int sf_r12; int sf_r11; int sf_r10; int sf_r9; int sf_r8; int sf_r7; int sf_r6; int sf_r5; int sf_r4; } ;
struct pcb {TYPE_1__ pcb_regs; } ;



void
makectx(struct trapframe *tf, struct pcb *pcb)
{
 pcb->pcb_regs.sf_r4 = tf->tf_r4;
 pcb->pcb_regs.sf_r5 = tf->tf_r5;
 pcb->pcb_regs.sf_r6 = tf->tf_r6;
 pcb->pcb_regs.sf_r7 = tf->tf_r7;
 pcb->pcb_regs.sf_r8 = tf->tf_r8;
 pcb->pcb_regs.sf_r9 = tf->tf_r9;
 pcb->pcb_regs.sf_r10 = tf->tf_r10;
 pcb->pcb_regs.sf_r11 = tf->tf_r11;
 pcb->pcb_regs.sf_r12 = tf->tf_r12;
 pcb->pcb_regs.sf_pc = tf->tf_pc;
 pcb->pcb_regs.sf_lr = tf->tf_usr_lr;
 pcb->pcb_regs.sf_sp = tf->tf_usr_sp;
}
