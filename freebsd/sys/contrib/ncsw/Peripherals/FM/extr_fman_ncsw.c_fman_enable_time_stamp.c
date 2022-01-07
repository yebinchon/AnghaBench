
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct fman_fpm_regs {int fmfp_tsc1; int fmfp_tsc2; } ;


 int FPM_TS_CTL_EN ;
 int FPM_TS_INT_SHIFT ;
 scalar_t__ do_div (int,int) ;
 int iowrite32be (int,int *) ;

void fman_enable_time_stamp(struct fman_fpm_regs *fpm_rg,
    uint8_t count1ubit,
    uint16_t fm_clk_freq)
{
 uint32_t tmp;
 uint64_t frac;
 uint32_t intgr;
 uint32_t ts_freq = (uint32_t)(1 << count1ubit);
 intgr = ts_freq / fm_clk_freq;




 frac = ((uint64_t)ts_freq << 16) - ((uint64_t)intgr << 16) * fm_clk_freq;

 if (do_div(frac, fm_clk_freq))
  frac++;

 tmp = (intgr << FPM_TS_INT_SHIFT) | (uint16_t)frac;
 iowrite32be(tmp, &fpm_rg->fmfp_tsc2);


 iowrite32be(FPM_TS_CTL_EN, &fpm_rg->fmfp_tsc1);
}
