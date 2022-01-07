
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct ti_clock_dev {int dummy; } ;


 int CM_WKUP_CM_CLKSEL_DPLL_DISP ;
 scalar_t__ DPLL_BYP_CLKSEL (unsigned int) ;
 unsigned int DPLL_DIV (unsigned int) ;
 unsigned int DPLL_MULT (unsigned int) ;
 int ENXIO ;
 int am335x_clk_get_sysclk_freq (int *,unsigned int*) ;
 unsigned int prcm_read_4 (int ) ;

__attribute__((used)) static int
am335x_clk_get_arm_disp_freq(struct ti_clock_dev *clkdev, unsigned int *freq)
{
 uint32_t reg;
 uint32_t sysclk;

 reg = prcm_read_4(CM_WKUP_CM_CLKSEL_DPLL_DISP);


 if (DPLL_BYP_CLKSEL(reg))
  return ENXIO;

 am335x_clk_get_sysclk_freq(((void*)0), &sysclk);
 *freq = DPLL_MULT(reg) * (sysclk / DPLL_DIV(reg));
 return(0);
}
