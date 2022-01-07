
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int MASK_C_JR ;
 int MATCH_C_JR ;
 int RD_MASK ;
 int RD_SHIFT ;
 int X_RA ;
 scalar_t__ match_opcode (int ,int,int) ;

__attribute__((used)) static int
check_c_ret(uint32_t **instr)
{
 uint16_t *instr1;
 int i;

 for (i = 0; i < 2; i++) {
  instr1 = (uint16_t *)(*instr) + i;
  if (match_opcode(*instr1, (MATCH_C_JR | (X_RA << RD_SHIFT)),
      (MASK_C_JR | RD_MASK))) {
   *instr = (uint32_t *)instr1;
   return (1);
  }
 }

 return (0);
}
