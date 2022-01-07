
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_direct; int displacement; } ;
struct TYPE_4__ {TYPE_1__ branch; } ;
struct pt_insn_ext {TYPE_2__ variant; } ;
struct pt_ild {int disp_bytes; int disp_pos; } ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 scalar_t__ get_byte_ptr (struct pt_ild const*,int ) ;
 int pte_bad_insn ;
 int pte_internal ;

__attribute__((used)) static int set_branch_target(struct pt_insn_ext *iext, const struct pt_ild *ild)
{
 if (!iext || !ild)
  return -pte_internal;

 iext->variant.branch.is_direct = 1;

 if (ild->disp_bytes == 1) {
  const int8_t *b = (const int8_t *)
   get_byte_ptr(ild, ild->disp_pos);

  iext->variant.branch.displacement = *b;
 } else if (ild->disp_bytes == 2) {
  const int16_t *w = (const int16_t *)
   get_byte_ptr(ild, ild->disp_pos);

  iext->variant.branch.displacement = *w;
 } else if (ild->disp_bytes == 4) {
  const int32_t *d = (const int32_t *)
   get_byte_ptr(ild, ild->disp_pos);

  iext->variant.branch.displacement = *d;
 } else
  return -pte_bad_insn;

 return 0;
}
