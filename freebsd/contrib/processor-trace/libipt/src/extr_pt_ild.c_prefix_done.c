
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int rex_r; int rex_w; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct pt_ild {TYPE_2__ u; } ;


 int opcode_dec (struct pt_ild*,int) ;
 int pte_internal ;

__attribute__((used)) static int prefix_done(struct pt_ild *ild, uint8_t length, uint8_t rex)
{
 if (!ild)
  return -pte_internal;

 if (rex & 0x04)
  ild->u.s.rex_r = 1;
 if (rex & 0x08)
  ild->u.s.rex_w = 1;

 return opcode_dec(ild, length);
}
