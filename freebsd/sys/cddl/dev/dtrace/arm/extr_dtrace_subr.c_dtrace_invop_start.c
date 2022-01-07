
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_pc; void* tf_r0; void* tf_svc_sp; void* tf_svc_lr; } ;
typedef void* register_t ;


 int BIT_LR ;
 int BIT_PC ;
 int BIT_SP ;

 int DTRACE_INVOP_DATA (int) ;
 int DTRACE_INVOP_MASK ;


 int dtrace_invop (int,struct trapframe*,int) ;

__attribute__((used)) static int
dtrace_invop_start(struct trapframe *frame)
{
 register_t *r0, *sp;
 int data, invop, reg, update_sp;

 invop = dtrace_invop(frame->tf_pc, frame, frame->tf_pc);
 switch (invop & DTRACE_INVOP_MASK) {
 case 128:
  sp = (register_t *)frame->tf_svc_sp;
  r0 = &frame->tf_r0;
  data = DTRACE_INVOP_DATA(invop);





  if (data & (1 << BIT_PC)) {
   sp--;
   *sp = frame->tf_pc;
  }
  if (data & (1 << BIT_LR)) {
   sp--;
   *sp = frame->tf_svc_lr;
  }
  if (data & (1 << BIT_SP)) {
   sp--;
   *sp = frame->tf_svc_sp;
  }


  for (reg = 12; reg >= 0; reg--) {
   if (data & (1 << reg)) {
    sp--;
    *sp = r0[reg];
   }
  }


  frame->tf_svc_sp = (register_t)sp;
  frame->tf_pc += 4;
  break;
 case 129:
  sp = (register_t *)frame->tf_svc_sp;
  r0 = &frame->tf_r0;
  data = DTRACE_INVOP_DATA(invop);


  for (reg = 0; reg <= 12; reg++) {
   if (data & (1 << reg)) {
    r0[reg] = *sp;
    sp++;
   }
  }





  update_sp = 1;
  if (data & (1 << BIT_SP)) {
   frame->tf_svc_sp = *sp;
   *sp++;
   update_sp = 0;
  }


  if (data & (1 << BIT_LR)) {
   frame->tf_svc_lr = *sp;
   *sp++;
  }




  if (data & (1 << BIT_PC)) {
   frame->tf_pc = *sp;
   *sp++;
  } else
   frame->tf_pc += 4;


  if (update_sp)
   frame->tf_svc_sp = (register_t)sp;
  break;
 case 130:
  data = DTRACE_INVOP_DATA(invop) & 0x00ffffff;

  if ((data & (1 << 23)) != 0)
   data |= 0xff000000;

  data *= 4;
  data += 8;
  frame->tf_pc += data;
  break;
 default:
  return (-1);
  break;
 }

 return (0);
}
