
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct utrapframe {int dummy; } ;


 scalar_t__ IF_F3_I (int ) ;
 int IF_F3_RS2 (int ) ;
 int IF_SIMM (int ,int) ;
 int __emul_fetch_reg (struct utrapframe*,int ) ;

u_long
__emul_f3_op2(struct utrapframe *uf, u_int insn)
{

 if (IF_F3_I(insn) != 0)
  return (IF_SIMM(insn, 13));
 else
  return (__emul_fetch_reg(uf, IF_F3_RS2(insn)));
}
