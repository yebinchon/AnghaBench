
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {size_t asz; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct pt_ild {size_t nominal_opcode; scalar_t__ max_bytes; size_t mode; int disp_bytes; TYPE_2__ u; int modrm_byte; } ;
typedef size_t pti_map_enum_t ;


 size_t PTI_MAP_2 ;
 int PTI_MODRM_FALSE ;
 int PTI_MODRM_IGNORE_MOD ;
 int PTI_MODRM_TRUE ;
 int PTI_MODRM_UNDEF ;
 int disp_dec (struct pt_ild*,scalar_t__) ;
 int *** disp_default ;
 scalar_t__** eamode_table ;
 int get_byte (struct pt_ild*,scalar_t__) ;


 scalar_t__*** has_sib ;
 int pte_bad_insn ;
 int pte_internal ;
 size_t pti_get_map (struct pt_ild*) ;
 int pti_get_modrm_mod (struct pt_ild*) ;
 int pti_get_modrm_rm (struct pt_ild*) ;
 int sib_dec (struct pt_ild*,scalar_t__) ;

__attribute__((used)) static int modrm_dec(struct pt_ild *ild, uint8_t length)
{
 static uint8_t const *const has_modrm_2d[2] = {
  129,
  128
 };
 int has_modrm = PTI_MODRM_FALSE;
 pti_map_enum_t map;

 if (!ild)
  return -pte_internal;

 map = pti_get_map(ild);
 if (map >= PTI_MAP_2)
  has_modrm = PTI_MODRM_TRUE;
 else
  has_modrm = has_modrm_2d[map][ild->nominal_opcode];

 if (has_modrm == PTI_MODRM_FALSE || has_modrm == PTI_MODRM_UNDEF)
  return disp_dec(ild, length);


 if (length >= ild->max_bytes)
  return -pte_bad_insn;

 ild->modrm_byte = get_byte(ild, length);

 if (has_modrm != PTI_MODRM_IGNORE_MOD) {


  uint8_t eamode = eamode_table[ild->u.s.asz][ild->mode];
  uint8_t mod = (uint8_t) pti_get_modrm_mod(ild);
  uint8_t rm = (uint8_t) pti_get_modrm_rm(ild);
  uint8_t sib;

  ild->disp_bytes = disp_default[eamode][mod][rm];

  sib = has_sib[eamode][mod][rm];
  if (sib)
   return sib_dec(ild, length + 1);
 }

 return disp_dec(ild, length + 1);
}
