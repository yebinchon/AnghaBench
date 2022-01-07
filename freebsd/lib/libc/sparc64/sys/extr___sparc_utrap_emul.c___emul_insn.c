
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct utrapframe {scalar_t__ uf_pc; } ;


 int IF_F3_OP3 (int ) ;
 int IF_F3_RD (int ) ;
 int IF_F3_RS1 (int ) ;
 int IF_OP (int ) ;



 int INSFPdq_RN (int ) ;


 int SIGILL ;
 scalar_t__ __emul_f3_memop_addr (struct utrapframe*,int ) ;
 int __emul_f3_op2 (struct utrapframe*,int ) ;
 int __emul_store_reg (struct utrapframe*,int ,int) ;
 int __fpu_getreg64 (int) ;
 int __fpu_setreg64 (int,int) ;
 int flushw () ;

int
__emul_insn(struct utrapframe *uf)
{
 u_long reg, res;
 u_long *addr;
 u_int insn;
 int sig;
 int rd;
 int i;

 sig = 0;
 insn = *(u_int *)uf->uf_pc;
 flushw();
 switch (IF_OP(insn)) {
 case 128:
  switch (IF_F3_OP3(insn)) {
  case 132:
   if (IF_F3_RS1(insn) != 0) {
    sig = SIGILL;
    break;
   }
   reg = __emul_f3_op2(uf, insn);
   for (i = 0; i < 64; i++)
    res += (reg >> i) & 1;
   __emul_store_reg(uf, IF_F3_RD(insn), res);
   break;
  default:
   sig = SIGILL;
   break;
  }
  break;
 case 129:
  switch (IF_F3_OP3(insn)) {
  case 131:
   rd = INSFPdq_RN(IF_F3_RD(insn));
   addr = (u_long *)__emul_f3_memop_addr(uf, insn);
   __fpu_setreg64(rd, addr[0]);
   __fpu_setreg64(rd + 2, addr[1]);
   break;
  case 130:
   rd = INSFPdq_RN(IF_F3_RD(insn));
   addr = (u_long *)__emul_f3_memop_addr(uf, insn);
   addr[0] = __fpu_getreg64(rd);
   addr[1] = __fpu_getreg64(rd + 2);
   break;
  default:
   sig = SIGILL;
   break;
  }
  break;
 default:
  sig = SIGILL;
  break;
 }
 return (sig);
}
