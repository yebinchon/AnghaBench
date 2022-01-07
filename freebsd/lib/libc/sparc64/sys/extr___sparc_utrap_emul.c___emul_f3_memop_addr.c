
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int u_int ;
struct utrapframe {int dummy; } ;


 int IF_F3_RS1 (int ) ;
 scalar_t__ __emul_f3_op2 (struct utrapframe*,int ) ;
 scalar_t__ __emul_fetch_reg (struct utrapframe*,int ) ;

u_long
__emul_f3_memop_addr(struct utrapframe *uf, u_int insn)
{
 u_long addr;

 addr = __emul_f3_op2(uf, insn) + __emul_fetch_reg(uf, IF_F3_RS1(insn));
 return (addr);
}
