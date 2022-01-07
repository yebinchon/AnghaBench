
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int dummy; } ;
struct thread {struct trapframe* td_frame; } ;
struct reg {int dummy; } ;


 int fill_frame_regs (struct trapframe*,struct reg*) ;

int
fill_regs(struct thread *td, struct reg *regs)
{
 struct trapframe *tp;

 tp = td->td_frame;
 return (fill_frame_regs(tp, regs));
}
