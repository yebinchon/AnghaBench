
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int outb (int,int ) ;

__attribute__((used)) static void
vga_set_indexed(int reg, int indexreg, int datareg, uint8_t index, uint8_t val)
{
 outb(reg + indexreg, index);
 outb(reg + datareg, val);
}
