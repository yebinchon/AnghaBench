
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct imx6_anatop_softc {int refosc_mhz; } ;



__attribute__((used)) static inline uint32_t
cpufreq_mhz_from_div(struct imx6_anatop_softc *sc, uint32_t corediv,
    uint32_t plldiv)
{

 return ((sc->refosc_mhz * (plldiv / 2)) / (corediv + 1));
}
