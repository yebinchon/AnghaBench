
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct pt_ild {scalar_t__ max_bytes; int nominal_opcode; } ;


 int get_byte (struct pt_ild*,scalar_t__) ;
 int modrm_dec (struct pt_ild*,scalar_t__) ;
 int pte_bad_insn ;
 int pte_internal ;

__attribute__((used)) static inline int get_next_as_opcode(struct pt_ild *ild, uint8_t length)
{
 if (!ild)
  return -pte_internal;

 if (ild->max_bytes <= length)
  return -pte_bad_insn;

 ild->nominal_opcode = get_byte(ild, length);

 return modrm_dec(ild, length + 1);
}
