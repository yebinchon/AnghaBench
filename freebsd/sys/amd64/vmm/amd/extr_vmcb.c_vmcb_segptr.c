
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcb_segment {int dummy; } ;
struct vmcb_state {struct vmcb_segment tr; struct vmcb_segment ldt; struct vmcb_segment idt; struct vmcb_segment gdt; struct vmcb_segment ss; struct vmcb_segment gs; struct vmcb_segment fs; struct vmcb_segment es; struct vmcb_segment ds; struct vmcb_segment cs; } ;
struct vmcb {struct vmcb_state state; } ;
__attribute__((used)) static struct vmcb_segment *
vmcb_segptr(struct vmcb *vmcb, int type)
{
 struct vmcb_state *state;
 struct vmcb_segment *seg;

 state = &vmcb->state;

 switch (type) {
 case 137:
  seg = &state->cs;
  break;

 case 136:
  seg = &state->ds;
  break;

 case 135:
  seg = &state->es;
  break;

 case 134:
  seg = &state->fs;
  break;

 case 132:
  seg = &state->gs;
  break;

 case 129:
  seg = &state->ss;
  break;

 case 133:
  seg = &state->gdt;
  break;

 case 131:
  seg = &state->idt;
  break;

 case 130:
  seg = &state->ldt;
  break;

 case 128:
  seg = &state->tr;
  break;

 default:
  seg = ((void*)0);
  break;
 }

 return (seg);
}
