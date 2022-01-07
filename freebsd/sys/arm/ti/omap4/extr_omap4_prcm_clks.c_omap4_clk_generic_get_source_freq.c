
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_clock_dev {int id; } ;
struct omap4_clk_details {scalar_t__ src_freq; } ;


 int ENXIO ;
 struct omap4_clk_details* omap4_clk_details (int ) ;

__attribute__((used)) static int
omap4_clk_generic_get_source_freq(struct ti_clock_dev *clkdev,
                                  unsigned int *freq
                                  )
{
 struct omap4_clk_details* clk_details = omap4_clk_details(clkdev->id);

 if (clk_details == ((void*)0))
  return (ENXIO);


 if (freq)
  *freq = (unsigned int)clk_details->src_freq;

 return (0);
}
