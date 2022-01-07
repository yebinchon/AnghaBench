
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IMX_RXD ;
 int ub_getreg (int ) ;
 int ub_tstc () ;

__attribute__((used)) static int
ub_getc(void)
{

 while (!ub_tstc());
  __asm __volatile("nop");

 return (ub_getreg(IMX_RXD) & 0xff);
}
