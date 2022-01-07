
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct fpemu {int dummy; } ;


 int IF_F4_COND (int ) ;
 int __fpu_mov (struct fpemu*,int,int,int,int ,int ) ;

__attribute__((used)) static __inline void
__fpu_ccmov(struct fpemu *fe, int type, int rd, int rs2,
    u_int32_t insn, int fcc)
{

 if (IF_F4_COND(insn) == fcc)
  __fpu_mov(fe, type, rd, rs2, 0, 0);
}
