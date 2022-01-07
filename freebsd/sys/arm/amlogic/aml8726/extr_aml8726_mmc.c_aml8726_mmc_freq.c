
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aml8726_mmc_softc {int ref_freq; } ;



__attribute__((used)) static uint32_t
aml8726_mmc_freq(struct aml8726_mmc_softc *sc, uint32_t divisor)
{

 return (sc->ref_freq / ((divisor + 1) * 2));
}
