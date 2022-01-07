
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int vex; int rex_r; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct pt_ild {scalar_t__ max_bytes; int map; TYPE_2__ u; } ;


 int PTI_MAP_1 ;
 int bits_match (scalar_t__,int,int) ;
 scalar_t__ get_byte (struct pt_ild*,scalar_t__) ;
 int mode_64b (struct pt_ild*) ;
 int opcode_dec (struct pt_ild*,scalar_t__) ;
 int prefix_vex_done (struct pt_ild*,scalar_t__) ;
 int pte_bad_insn ;
 int pte_internal ;

__attribute__((used)) static int prefix_vex_c5(struct pt_ild *ild, uint8_t length, uint8_t rex)
{
 uint8_t max_bytes;
 uint8_t p1;

 (void) rex;

 if (!ild)
  return -pte_internal;

 max_bytes = ild->max_bytes;


 if (max_bytes <= (length + 1))
  return -pte_bad_insn;

 p1 = get_byte(ild, length + 1);


 if (!mode_64b(ild) && !bits_match(p1, 0xc0, 0xc0))
  return opcode_dec(ild, length);





 if (max_bytes < (length + 3))
  return -pte_bad_insn;

 ild->u.s.vex = 1;
 if (p1 & 0x80)
  ild->u.s.rex_r = 1;

 ild->map = PTI_MAP_1;


 length += 2;
 return prefix_vex_done(ild, length);
}
