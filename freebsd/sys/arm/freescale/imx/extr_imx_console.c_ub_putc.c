
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IMX_TXD ;
 int IMX_UTS ;
 int IMX_UTS_TXFULL ;
 int ub_getreg (int ) ;
 int ub_setreg (int ,unsigned char) ;

__attribute__((used)) static void
ub_putc(unsigned char c)
{

 if (c == '\n')
  ub_putc('\r');

 while (ub_getreg(IMX_UTS) & IMX_UTS_TXFULL)
  __asm __volatile("nop");

 ub_setreg(IMX_TXD, c);
}
