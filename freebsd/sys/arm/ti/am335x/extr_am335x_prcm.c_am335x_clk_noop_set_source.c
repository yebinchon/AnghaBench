
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_clock_dev {int dummy; } ;
typedef int clk_src_t ;



__attribute__((used)) static int
am335x_clk_noop_set_source(struct ti_clock_dev *clkdev, clk_src_t clksrc)
{

 return (0);
}
