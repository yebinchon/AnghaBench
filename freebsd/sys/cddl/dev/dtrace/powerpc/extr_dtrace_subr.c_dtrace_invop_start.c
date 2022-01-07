
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int srr0; int lr; int * fixreg; int ctr; } ;






 int dtrace_invop (int ,struct trapframe*,int ) ;

__attribute__((used)) static int
dtrace_invop_start(struct trapframe *frame)
{

 switch (dtrace_invop(frame->srr0, frame, frame->fixreg[3])) {
 case 129:
  break;
 case 131:
  frame->srr0 = frame->ctr;
  break;
 case 130:
  frame->srr0 = frame->lr;
  break;
 case 128:
  frame->fixreg[0] = frame->lr;
  frame->srr0 = frame->srr0 + 4;
  break;
 default:
  return (-1);
 }
 return (0);
}
