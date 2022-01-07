
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct imx6_anatop_softc {int refosc_mhz; } ;



__attribute__((used)) static inline void
cpufreq_mhz_to_div(struct imx6_anatop_softc *sc, uint32_t cpu_mhz,
    uint32_t *corediv, uint32_t *plldiv)
{

 *corediv = (cpu_mhz < 650) ? 1 : 0;
 *plldiv = ((*corediv + 1) * cpu_mhz) / (sc->refosc_mhz / 2);
}
