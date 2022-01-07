
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ coherent_walk; } ;


 int ARM_SMP_UP (int) ;
 int PRRR_DS0 ;
 int PRRR_DS1 ;
 int PRRR_NS1 ;
 int TEXDEF_INNER_MASK ;
 int TEXDEF_INNER_SHIFT ;
 int TEXDEF_NOS_MASK ;
 int TEXDEF_NOS_SHIFT ;
 int TEXDEF_OUTER_MASK ;
 int TEXDEF_OUTER_SHIFT ;
 int TEXDEF_TYPE_MASK ;
 int TEXDEF_TYPE_SHIFT ;
 int VM_MEMATTR_NOCACHE ;
 int VM_MEMATTR_WB_WA ;
 int cp15_nmrr_set (int) ;
 int cp15_prrr_set (int) ;
 TYPE_1__ cpuinfo ;
 int encode_ttb_flags (int) ;
 int pt_memattr ;
 int* tex_class ;
 int tlb_flush_all_local () ;
 int ttb_flags ;

void
pmap_set_tex(void)
{
 uint32_t prrr, nmrr;
 uint32_t type, inner, outer, nos;
 int i;
 pt_memattr = VM_MEMATTR_WB_WA;
 ttb_flags = encode_ttb_flags(0);


 prrr = 0;
 nmrr = 0;


 for (i = 0; i < 8; i++) {
  type = (tex_class[i] >> TEXDEF_TYPE_SHIFT) &
   TEXDEF_TYPE_MASK;
  inner = (tex_class[i] >> TEXDEF_INNER_SHIFT) &
   TEXDEF_INNER_MASK;
  outer = (tex_class[i] >> TEXDEF_OUTER_SHIFT) &
   TEXDEF_OUTER_MASK;
  nos = (tex_class[i] >> TEXDEF_NOS_SHIFT) &
   TEXDEF_NOS_MASK;

  prrr |= type << (i * 2);
  prrr |= nos << (i + 24);
  nmrr |= inner << (i * 2);
  nmrr |= outer << (i * 2 + 16);
 }

 prrr |= PRRR_DS0 | PRRR_DS1;







 cp15_prrr_set(prrr);
 cp15_nmrr_set(nmrr);


 tlb_flush_all_local();
}
