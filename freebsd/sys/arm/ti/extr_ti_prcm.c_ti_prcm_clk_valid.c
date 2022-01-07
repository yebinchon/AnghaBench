
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clk_ident_t ;


 int EINVAL ;
 int * ti_prcm_clk_dev (int ) ;

int
ti_prcm_clk_valid(clk_ident_t clk)
{
 int ret = 0;

 if (ti_prcm_clk_dev(clk) == ((void*)0))
  ret = EINVAL;

 return (ret);
}
