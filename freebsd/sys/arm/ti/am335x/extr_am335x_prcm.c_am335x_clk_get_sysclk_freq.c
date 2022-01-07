
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_clock_dev {int dummy; } ;


 int ENXIO ;
 int SCM_CTRL_STATUS ;
 scalar_t__ ti_scm_reg_read_4 (int ,int*) ;

__attribute__((used)) static int
am335x_clk_get_sysclk_freq(struct ti_clock_dev *clkdev, unsigned int *freq)
{
 uint32_t ctrl_status;


 if (ti_scm_reg_read_4(SCM_CTRL_STATUS, &ctrl_status))
  return (ENXIO);

 switch ((ctrl_status>>22) & 0x3) {
 case 0x0:

  *freq = 19200000;
  break;
 case 0x1:

  *freq = 24000000;
  break;
 case 0x2:

  *freq = 25000000;
  break;
 case 0x3:

  *freq = 26000000;
  break;
 }

 return (0);
}
