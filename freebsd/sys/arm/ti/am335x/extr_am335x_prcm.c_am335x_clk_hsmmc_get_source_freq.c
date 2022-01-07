
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_clock_dev {int dummy; } ;



__attribute__((used)) static int
am335x_clk_hsmmc_get_source_freq(struct ti_clock_dev *clkdev, unsigned int *freq)
{
 *freq = 96000000;
 return (0);
}
