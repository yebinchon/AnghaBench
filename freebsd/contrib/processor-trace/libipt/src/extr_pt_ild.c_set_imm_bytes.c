
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int last_f2f3; int osz; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct pt_ild {int map; size_t nominal_opcode; int imm1_bytes; int imm2_bytes; TYPE_2__ u; } ;
typedef int map_map ;






 int PTI_MAP_0 ;
 int PTI_MAP_1 ;
 int pte_internal ;
 int pti_get_modrm_reg (struct pt_ild*) ;
 int pti_get_nominal_eosz (struct pt_ild*) ;
 int pti_get_nominal_eosz_df64 (struct pt_ild*) ;
 int resolve_v (int*,int ) ;
 int resolve_z (int*,int ) ;

__attribute__((used)) static int set_imm_bytes(struct pt_ild *ild)
{

 static uint8_t const *const map_map[] = {
              129,
              128
 };
 uint8_t map, imm_code;

 if (!ild)
  return -pte_internal;

 map = ild->map;

 if ((sizeof(map_map) / sizeof(*map_map)) <= map)
  return 0;

 imm_code = map_map[map][ild->nominal_opcode];
 switch (imm_code) {
 case 141:
 case 142:
 default:
  return 0;

 case 131:
  ild->imm1_bytes = 1;
  return 0;

 case 135:
  ild->imm1_bytes = 1;
  return 0;

 case 133:

  return resolve_z(&ild->imm1_bytes, pti_get_nominal_eosz(ild));

 case 130:

  return resolve_v(&ild->imm1_bytes, pti_get_nominal_eosz(ild));

 case 132:
  ild->imm1_bytes = 2;
  return 0;

 case 134:

  return resolve_z(&ild->imm1_bytes,
     pti_get_nominal_eosz_df64(ild));

 case 136:
  if (ild->map == PTI_MAP_0 && pti_get_modrm_reg(ild) < 2) {
   return resolve_z(&ild->imm1_bytes,
      pti_get_nominal_eosz(ild));
  }
  return 0;

 case 138:
  if (ild->map == PTI_MAP_0 && pti_get_modrm_reg(ild) == 0) {
   return resolve_z(&ild->imm1_bytes,
      pti_get_nominal_eosz(ild));
  }
  return 0;

 case 137:
  if (ild->map == PTI_MAP_0 && pti_get_modrm_reg(ild) < 2)
   ild->imm1_bytes = 1;

  return 0;

 case 139:
  if (ild->map == PTI_MAP_0) {

   ild->imm1_bytes = 2;
   ild->imm2_bytes = 1;
  }
  return 0;

 case 140:



  if (ild->map == PTI_MAP_1) {
   if (ild->u.s.osz || ild->u.s.last_f2f3 == 2) {
    ild->imm1_bytes = 1;
    ild->imm2_bytes = 1;
   }
  }
  return 0;
 }
}
