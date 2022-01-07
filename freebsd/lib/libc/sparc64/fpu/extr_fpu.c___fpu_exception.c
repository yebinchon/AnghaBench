
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int32_t ;
typedef int u_int ;
struct utrapframe {int uf_fsr; int uf_state; scalar_t__ uf_pc; } ;
struct fpemu {int fe_fsr; } ;




 int FSR_FTT_MASK ;




 int FSR_GET_FTT (int) ;
 scalar_t__ IF_F3_OP3 (int ) ;
 scalar_t__ IF_OP (int ) ;
 scalar_t__ INS2_FPop1 ;
 scalar_t__ INS2_FPop2 ;
 scalar_t__ IOP_MISC ;
 int SIGFPE ;
 int __fpu_execute (struct utrapframe*,struct fpemu*,int ,int) ;
 int __utrap_panic (char*) ;
 int __utrap_write (char*) ;

int
__fpu_exception(struct utrapframe *uf)
{
 struct fpemu fe;
 u_long fsr, tstate;
 u_int insn;
 int sig;

 fsr = uf->uf_fsr;

 switch (FSR_GET_FTT(fsr)) {
 case 131:
  __utrap_write("lost FPU trap type\n");
  return (0);
 case 132:
  return (SIGFPE);
 case 130:
  __utrap_write("FPU sequence error\n");
  return (SIGFPE);
 case 133:
  __utrap_write("FPU hardware error\n");
  return (SIGFPE);
 case 129:
 case 128:
  break;
 default:
  __utrap_write("unknown FPU error\n");
  return (SIGFPE);
 }

 fe.fe_fsr = fsr & ~FSR_FTT_MASK;
 insn = *(u_int32_t *)uf->uf_pc;
 if (IF_OP(insn) != IOP_MISC || (IF_F3_OP3(insn) != INS2_FPop1 &&
     IF_F3_OP3(insn) != INS2_FPop2))
  __utrap_panic("bogus FP fault");
 tstate = uf->uf_state;
 sig = __fpu_execute(uf, &fe, insn, tstate);
 if (sig != 0)
  return (sig);
 __asm __volatile("ldx %0, %%fsr" : : "m" (fe.fe_fsr));
 return (0);
}
