
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i; } ;
struct pt_ild {int mode; int map; scalar_t__ modrm_byte; scalar_t__ disp_bytes; scalar_t__ imm2_bytes; scalar_t__ imm1_bytes; TYPE_1__ u; } ;


 int PTI_MAP_INVALID ;
 int decode (struct pt_ild*) ;
 int pte_bad_insn ;
 int pte_internal ;

__attribute__((used)) static int pt_instruction_length_decode(struct pt_ild *ild)
{
 if (!ild)
  return -pte_internal;

 ild->u.i = 0;
 ild->imm1_bytes = 0;
 ild->imm2_bytes = 0;
 ild->disp_bytes = 0;
 ild->modrm_byte = 0;
 ild->map = PTI_MAP_INVALID;

 if (!ild->mode)
  return -pte_bad_insn;

 return decode(ild);
}
