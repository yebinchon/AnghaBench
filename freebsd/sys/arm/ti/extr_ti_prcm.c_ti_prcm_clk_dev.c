
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_clock_dev {scalar_t__ id; } ;
typedef scalar_t__ clk_ident_t ;




 scalar_t__ INVALID_CLK_IDENT ;
 int panic (char*) ;
 int printf (char*,scalar_t__) ;
 struct ti_clock_dev* ti_am335x_clk_devmap ;
 int ti_chip () ;
 struct ti_clock_dev* ti_omap4_clk_devmap ;

__attribute__((used)) static struct ti_clock_dev *
ti_prcm_clk_dev(clk_ident_t clk)
{
 struct ti_clock_dev *clk_dev;





 clk_dev = ((void*)0);
 switch(ti_chip()) {
 }
 if (clk_dev == ((void*)0))
  panic("No clock devmap found");
 while (clk_dev->id != INVALID_CLK_IDENT) {
  if (clk_dev->id == clk) {
   return (clk_dev);
  }
  clk_dev++;
 }


 printf("ti_prcm: Failed to find clock device (%d)\n", clk);
 return (((void*)0));
}
