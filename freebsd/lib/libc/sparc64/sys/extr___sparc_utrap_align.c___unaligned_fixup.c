
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int u_char ;
struct utrapframe {scalar_t__ uf_pc; scalar_t__ uf_sfar; } ;


 int IF_F3_OP3 (int ) ;
 int IF_F3_RD (int ) ;
 int IF_OP (int ) ;
 int IF_SEXT (int ,int) ;
 int SIGILL ;
 int __emul_fetch_reg (struct utrapframe*,int ) ;
 int __emul_store_reg (struct utrapframe*,int ,int ) ;
 int __unaligned_load (int *,int) ;
 int __unaligned_store (int *,int ,int) ;
 int flushw () ;

int
__unaligned_fixup(struct utrapframe *uf)
{
 u_char *addr;
 u_long val;
 u_int insn;
 int sig;

 sig = 0;
 addr = (u_char *)uf->uf_sfar;
 insn = *(u_int *)uf->uf_pc;
 flushw();
 switch (IF_OP(insn)) {
 case 128:
  switch (IF_F3_OP3(insn)) {
  case 134:
   val = __unaligned_load(addr, 2);
   __emul_store_reg(uf, IF_F3_RD(insn), val);
   break;
  case 133:
   val = __unaligned_load(addr, 4);
   __emul_store_reg(uf, IF_F3_RD(insn), val);
   break;
  case 132:
   val = __unaligned_load(addr, 8);
   __emul_store_reg(uf, IF_F3_RD(insn), val);
   break;
  case 136:
   val = __unaligned_load(addr, 2);
   __emul_store_reg(uf, IF_F3_RD(insn),
       IF_SEXT(val, 16));
   break;
  case 135:
   val = __unaligned_load(addr, 4);
   __emul_store_reg(uf, IF_F3_RD(insn),
       IF_SEXT(val, 32));
   break;
  case 131:
   val = __emul_fetch_reg(uf, IF_F3_RD(insn));
   __unaligned_store(addr, val, 2);
   break;
  case 130:
   val = __emul_fetch_reg(uf, IF_F3_RD(insn));
   __unaligned_store(addr, val, 4);
   break;
  case 129:
   val = __emul_fetch_reg(uf, IF_F3_RD(insn));
   __unaligned_store(addr, val, 8);
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
