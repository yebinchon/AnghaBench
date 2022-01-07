
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ coherent_walk; } ;


 int ARM_SMP_UP (int) ;
 int TEXDEF_INNER_MASK ;
 int TEXDEF_INNER_SHIFT ;
 int TEXDEF_NOS_MASK ;
 int TEXDEF_NOS_SHIFT ;
 int TEXDEF_OUTER_MASK ;
 int TEXDEF_OUTER_SHIFT ;
 TYPE_1__ cpuinfo ;
 int* tex_class ;

__attribute__((used)) static uint32_t
encode_ttb_flags(int idx)
{
 uint32_t inner, outer, nos, reg;

 inner = (tex_class[idx] >> TEXDEF_INNER_SHIFT) &
  TEXDEF_INNER_MASK;
 outer = (tex_class[idx] >> TEXDEF_OUTER_SHIFT) &
  TEXDEF_OUTER_MASK;
 nos = (tex_class[idx] >> TEXDEF_NOS_SHIFT) &
  TEXDEF_NOS_MASK;

 reg = nos << 5;
 reg |= outer << 3;
 if (cpuinfo.coherent_walk)
  reg |= (inner & 0x1) << 6;
 reg |= (inner & 0x2) >> 1;





 return reg;
}
