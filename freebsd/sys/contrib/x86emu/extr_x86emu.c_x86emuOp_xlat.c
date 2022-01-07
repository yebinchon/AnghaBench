
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ R_AL; scalar_t__ R_BX; } ;
struct x86emu {TYPE_1__ x86; } ;


 scalar_t__ fetch_data_byte (struct x86emu*,scalar_t__) ;

__attribute__((used)) static void
x86emuOp_xlat(struct x86emu *emu)
{
 uint16_t addr;

 addr = (uint16_t) (emu->x86.R_BX + (uint8_t) emu->x86.R_AL);
 emu->x86.R_AL = fetch_data_byte(emu, addr);
}
