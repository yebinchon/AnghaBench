
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VGA_AC_WRITE ;
 scalar_t__ VGA_GEN_INPUT_STAT_1 ;
 int inb (scalar_t__) ;
 int outb (scalar_t__,int) ;

__attribute__((used)) static void
vga_set_atr(int reg, int i, int v)
{
        (void) inb(reg + VGA_GEN_INPUT_STAT_1);
        outb(reg + VGA_AC_WRITE, i);
        outb(reg + VGA_AC_WRITE, v);

        (void) inb(reg + VGA_GEN_INPUT_STAT_1);
}
