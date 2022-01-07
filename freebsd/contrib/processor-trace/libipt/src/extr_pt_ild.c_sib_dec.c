
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct pt_ild {scalar_t__ max_bytes; int disp_bytes; } ;


 int disp_dec (struct pt_ild*,scalar_t__) ;
 scalar_t__ get_byte (struct pt_ild*,scalar_t__) ;
 int pte_bad_insn ;
 int pte_internal ;
 scalar_t__ pti_get_modrm_mod (struct pt_ild*) ;

__attribute__((used)) static int sib_dec(struct pt_ild *ild, uint8_t length)
{
 uint8_t sib;

 if (!ild)
  return -pte_internal;

 if (ild->max_bytes <= length)
  return -pte_bad_insn;

 sib = get_byte(ild, length);
 if ((sib & 0x07) == 0x05 && pti_get_modrm_mod(ild) == 0)
  ild->disp_bytes = 4;

 return disp_dec(ild, length + 1);
}
