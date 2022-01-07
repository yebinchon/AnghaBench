
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aml8726_mmc_softc {int ref_freq; } ;


 int AML_MMC_CONFIG_CMD_CLK_DIV_MASK ;
 int AML_MMC_CONFIG_CMD_CLK_DIV_SHIFT ;
 int aml8726_mmc_freq (struct aml8726_mmc_softc*,int) ;

__attribute__((used)) static uint32_t
aml8726_mmc_div(struct aml8726_mmc_softc *sc, uint32_t desired_freq)
{
 uint32_t divisor;

 divisor = sc->ref_freq / (desired_freq * 2);

 if (divisor == 0)
  divisor = 1;

 divisor -= 1;

 if (aml8726_mmc_freq(sc, divisor) > desired_freq)
  divisor += 1;

 if (divisor > (AML_MMC_CONFIG_CMD_CLK_DIV_MASK >>
     AML_MMC_CONFIG_CMD_CLK_DIV_SHIFT)) {
  divisor = AML_MMC_CONFIG_CMD_CLK_DIV_MASK >>
      AML_MMC_CONFIG_CMD_CLK_DIV_SHIFT;
 }

 return (divisor);
}
