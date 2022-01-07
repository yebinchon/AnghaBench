
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_ild {int dummy; } ;


 int get_byte (struct pt_ild*,int ) ;
 scalar_t__ mode_64b (struct pt_ild*) ;
 int opcode_dec (struct pt_ild*,int ) ;
 int prefix_next (struct pt_ild*,int ,int ) ;
 int pte_internal ;

__attribute__((used)) static int prefix_rex(struct pt_ild *ild, uint8_t length, uint8_t rex)
{
 (void) rex;

 if (!ild)
  return -pte_internal;

 if (mode_64b(ild))
  return prefix_next(ild, length, get_byte(ild, length));
 else
  return opcode_dec(ild, length);
}
