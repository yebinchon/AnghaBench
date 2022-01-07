
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int inb (int) ;
 int outb (int,int ) ;

__attribute__((used)) static int
vga_get_indexed(int reg, int indexreg, int datareg, uint8_t index)
{
 outb(reg + indexreg, index);
 return (inb(reg + datareg));
}
