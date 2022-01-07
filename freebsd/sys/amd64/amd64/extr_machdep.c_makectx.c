
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_rsp; int tf_rip; int tf_rbx; int tf_rbp; int tf_r15; int tf_r14; int tf_r13; int tf_r12; } ;
struct pcb {int pcb_rsp; int pcb_rip; int pcb_rbx; int pcb_rbp; int pcb_r15; int pcb_r14; int pcb_r13; int pcb_r12; } ;



void
makectx(struct trapframe *tf, struct pcb *pcb)
{

 pcb->pcb_r12 = tf->tf_r12;
 pcb->pcb_r13 = tf->tf_r13;
 pcb->pcb_r14 = tf->tf_r14;
 pcb->pcb_r15 = tf->tf_r15;
 pcb->pcb_rbp = tf->tf_rbp;
 pcb->pcb_rbx = tf->tf_rbx;
 pcb->pcb_rip = tf->tf_rip;
 pcb->pcb_rsp = tf->tf_rsp;
}
