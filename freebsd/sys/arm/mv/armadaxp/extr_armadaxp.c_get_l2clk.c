
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ count_l2clk () ;

uint32_t
get_l2clk(void)
{
 static uint32_t l2clk_freq = 0;


 if (l2clk_freq == 0)
  l2clk_freq = count_l2clk();

 return (l2clk_freq);
}
