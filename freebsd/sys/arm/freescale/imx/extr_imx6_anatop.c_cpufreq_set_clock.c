
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct oppt {scalar_t__ mhz; int mv; } ;
struct imx6_anatop_softc {scalar_t__ cpu_curmhz; } ;


 int IMX6_ANALOG_CCM_PLL_ARM ;
 int IMX6_ANALOG_CCM_PLL_ARM_BYPASS ;
 int IMX6_ANALOG_CCM_PLL_ARM_CLK_SRC_MASK ;
 int IMX6_ANALOG_CCM_PLL_ARM_CLR ;
 int IMX6_ANALOG_CCM_PLL_ARM_DIV_MASK ;
 int IMX6_ANALOG_CCM_PLL_ARM_LOCK ;
 int IMX6_ANALOG_CCM_PLL_ARM_SET ;
 int arm_tmr_change_frequency (int) ;
 int cpufreq_actual_mhz (struct imx6_anatop_softc*,scalar_t__) ;
 int cpufreq_mhz_to_div (struct imx6_anatop_softc*,scalar_t__,int*,int*) ;
 int imx6_anatop_read_4 (int ) ;
 int imx6_anatop_write_4 (int ,int) ;
 int imx_ccm_set_cacrr (int) ;
 int panic (char*) ;
 int vdd_set (struct imx6_anatop_softc*,int ) ;

__attribute__((used)) static void
cpufreq_set_clock(struct imx6_anatop_softc * sc, struct oppt *op)
{
 uint32_t corediv, plldiv, timeout, wrk32;


 if (op->mhz > sc->cpu_curmhz) {
  vdd_set(sc, op->mv);
 }
 cpufreq_mhz_to_div(sc, op->mhz, &corediv, &plldiv);
 imx6_anatop_write_4(IMX6_ANALOG_CCM_PLL_ARM_CLR,
     IMX6_ANALOG_CCM_PLL_ARM_CLK_SRC_MASK);
 imx6_anatop_write_4(IMX6_ANALOG_CCM_PLL_ARM_SET,
     IMX6_ANALOG_CCM_PLL_ARM_BYPASS);

 wrk32 = imx6_anatop_read_4(IMX6_ANALOG_CCM_PLL_ARM);
 wrk32 &= ~IMX6_ANALOG_CCM_PLL_ARM_DIV_MASK;
 wrk32 |= plldiv;
 imx6_anatop_write_4(IMX6_ANALOG_CCM_PLL_ARM, wrk32);

 timeout = 10000;
 while ((imx6_anatop_read_4(IMX6_ANALOG_CCM_PLL_ARM) &
     IMX6_ANALOG_CCM_PLL_ARM_LOCK) == 0)
  if (--timeout == 0)
   panic("imx6_set_cpu_clock(): PLL never locked");

 imx6_anatop_write_4(IMX6_ANALOG_CCM_PLL_ARM_CLR,
     IMX6_ANALOG_CCM_PLL_ARM_BYPASS);
 imx_ccm_set_cacrr(corediv);


 if (op->mhz < sc->cpu_curmhz)
  vdd_set(sc, op->mv);
 sc->cpu_curmhz = op->mhz;


 arm_tmr_change_frequency(
     cpufreq_actual_mhz(sc, sc->cpu_curmhz) * 1000000 / 2);
}
