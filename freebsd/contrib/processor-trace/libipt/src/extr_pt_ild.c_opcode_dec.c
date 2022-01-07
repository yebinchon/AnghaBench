
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_ild {int nominal_opcode; int max_bytes; int imm1_bytes; int map; } ;


 int PTI_MAP_0 ;
 int PTI_MAP_1 ;
 int PTI_MAP_2 ;
 int PTI_MAP_3 ;
 int PTI_MAP_AMD3DNOW ;
 int PTI_MAP_INVALID ;
 scalar_t__ bits_match (int,int,int) ;
 int get_byte (struct pt_ild*,int) ;
 int get_next_as_opcode (struct pt_ild*,int) ;
 int modrm_dec (struct pt_ild*,int) ;
 int pte_bad_insn ;
 int pte_internal ;

__attribute__((used)) static int opcode_dec(struct pt_ild *ild, uint8_t length)
{
 uint8_t b, m;

 if (!ild)
  return -pte_internal;


 b = get_byte(ild, length);
 if (b != 0x0F) {
  ild->map = PTI_MAP_0;
  ild->nominal_opcode = b;

  return modrm_dec(ild, length + 1);
 }

 length++;

 if (ild->max_bytes <= length)
  return -pte_bad_insn;


 m = get_byte(ild, length);
 if (m == 0x38) {
  ild->map = PTI_MAP_2;

  return get_next_as_opcode(ild, length + 1);
 } else if (m == 0x3A) {
  ild->map = PTI_MAP_3;
  ild->imm1_bytes = 1;

  return get_next_as_opcode(ild, length + 1);
 } else if (bits_match(m, 0xf8, 0x38)) {
  ild->map = PTI_MAP_INVALID;

  return get_next_as_opcode(ild, length + 1);
 } else if (m == 0x0F) {
  ild->map = PTI_MAP_AMD3DNOW;
  ild->imm1_bytes = 1;


  ild->nominal_opcode = 0x0F;

  return modrm_dec(ild, length + 1);
 } else {
  ild->nominal_opcode = m;
  ild->map = PTI_MAP_1;

  return modrm_dec(ild, length + 1);
 }
}
