
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_ild {scalar_t__ disp_bytes; int map; size_t nominal_opcode; } ;
typedef int map_map ;






 int PTI_MAP_0 ;





 int mode_64b (struct pt_ild*) ;
 int pte_bad_insn ;
 int pte_internal ;
 int pti_get_modrm_reg (struct pt_ild*) ;
 int pti_get_nominal_easz (struct pt_ild*) ;
 int pti_get_nominal_eosz (struct pt_ild*) ;
 int resolve_v (int*,int ) ;
 int resolve_z (int*,int ) ;

__attribute__((used)) static int compute_disp_dec(struct pt_ild *ild)
{

 static uint8_t const *const map_map[] = {
              129,
              128
 };
 uint8_t map, disp_kind;

 if (!ild)
  return -pte_internal;

 if (0 < ild->disp_bytes)
  return 0;

 map = ild->map;

 if ((sizeof(map_map) / sizeof(*map_map)) <= map)
  return 0;

 disp_kind = map_map[map][ild->nominal_opcode];
 switch (disp_kind) {
 case 133:
  ild->disp_bytes = 0;
  return 0;

 case 131:

  return 0;

 case 136:
  ild->disp_bytes = 1;
  return 0;

 case 134:

  if (mode_64b(ild)) {
   ild->disp_bytes = 4;
   return 0;
  }

  return resolve_z(&ild->disp_bytes,
     pti_get_nominal_eosz(ild));

 case 132:

  return resolve_v(&ild->disp_bytes, pti_get_nominal_easz(ild));

 case 135:

  return resolve_z(&ild->disp_bytes, pti_get_nominal_eosz(ild));

 case 130:

  if (ild->map == PTI_MAP_0 && pti_get_modrm_reg(ild) == 7) {
   return resolve_z(&ild->disp_bytes,
      pti_get_nominal_eosz(ild));
  }
  return 0;

 default:
  return -pte_bad_insn;
 }
}
