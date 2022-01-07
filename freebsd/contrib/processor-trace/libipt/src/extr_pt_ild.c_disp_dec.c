
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct pt_ild {scalar_t__ disp_bytes; scalar_t__ max_bytes; scalar_t__ disp_pos; } ;


 int compute_disp_dec (struct pt_ild*) ;
 int imm_dec (struct pt_ild*,scalar_t__) ;
 int pte_bad_insn ;
 int pte_internal ;

__attribute__((used)) static int disp_dec(struct pt_ild *ild, uint8_t length)
{
 uint8_t disp_bytes;
 int errcode;

 if (!ild)
  return -pte_internal;

 errcode = compute_disp_dec(ild);
 if (errcode < 0)
  return errcode;

 disp_bytes = ild->disp_bytes;
 if (disp_bytes == 0)
  return imm_dec(ild, length);

 if (length + disp_bytes > ild->max_bytes)
  return -pte_bad_insn;



 ild->disp_pos = length;

 return imm_dec(ild, length + disp_bytes);
}
