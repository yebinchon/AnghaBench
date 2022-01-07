
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int READ_SPECIALREG (int ) ;
 int SCTLR_SPAN ;
 int WRITE_SPECIALREG (int ,int) ;
 scalar_t__ has_pan ;
 int sctlr_el1 ;

void
pan_enable(void)
{
 if (has_pan) {
  WRITE_SPECIALREG(sctlr_el1,
      READ_SPECIALREG(sctlr_el1) & ~SCTLR_SPAN);
  __asm __volatile(".inst 0xd500409f | (0x1 << 8)");
 }
}
