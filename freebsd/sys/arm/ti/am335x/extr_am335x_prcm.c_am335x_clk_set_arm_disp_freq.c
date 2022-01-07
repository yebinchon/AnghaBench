
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct ti_clock_dev {int dummy; } ;


 int CM_WKUP_CM_CLKMODE_DPLL_DISP ;
 int CM_WKUP_CM_CLKSEL_DPLL_DISP ;
 int CM_WKUP_CM_IDLEST_DPLL_DISP ;
 int DELAY (int) ;
 unsigned int DPLL_MAX_DIV ;
 unsigned int DPLL_MAX_MUL ;
 unsigned int abs (unsigned int) ;
 int am335x_clk_get_sysclk_freq (int *,unsigned int*) ;
 int prcm_read_4 (int ) ;
 int prcm_write_4 (int ,int) ;

__attribute__((used)) static int
am335x_clk_set_arm_disp_freq(struct ti_clock_dev *clkdev, unsigned int freq)
{
 uint32_t sysclk;
 uint32_t mul, div;
 uint32_t i, j;
 unsigned int delta, min_delta;

 am335x_clk_get_sysclk_freq(((void*)0), &sysclk);


 prcm_write_4(CM_WKUP_CM_CLKMODE_DPLL_DISP, 0x4);


 while (!(prcm_read_4(CM_WKUP_CM_IDLEST_DPLL_DISP)
     & (1 << 8)))
  DELAY(10);


 min_delta = freq;
 for (i = 1; i < DPLL_MAX_MUL; i++) {
  for (j = 1; j < DPLL_MAX_DIV; j++) {
   delta = abs(freq - i*(sysclk/j));
   if (delta < min_delta) {
    mul = i;
    div = j;
    min_delta = delta;
   }
   if (min_delta == 0)
    break;
  }
 }

 prcm_write_4(CM_WKUP_CM_CLKSEL_DPLL_DISP, (mul << 8) | (div - 1));


 prcm_write_4(CM_WKUP_CM_CLKMODE_DPLL_DISP, 0x7);

 int timeout = 10000;
 while ((!(prcm_read_4(CM_WKUP_CM_IDLEST_DPLL_DISP)
     & (1 << 0))) && timeout--)
  DELAY(10);

 return(0);
}
