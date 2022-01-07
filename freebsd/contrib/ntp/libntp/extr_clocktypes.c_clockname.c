
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clktype {int code; char const* abbrev; } ;


 struct clktype* clktypes ;

const char *
clockname(
 int num
 )
{
 register struct clktype *clk;

 for (clk = clktypes; clk->code != -1; clk++) {
  if (num == clk->code)
   return (clk->abbrev);
 }
 return (((void*)0));
}
