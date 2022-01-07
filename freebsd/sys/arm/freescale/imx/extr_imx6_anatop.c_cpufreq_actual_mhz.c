
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct imx6_anatop_softc {int dummy; } ;


 int cpufreq_mhz_from_div (struct imx6_anatop_softc*,int ,int ) ;
 int cpufreq_mhz_to_div (struct imx6_anatop_softc*,int ,int *,int *) ;

__attribute__((used)) static inline uint32_t
cpufreq_actual_mhz(struct imx6_anatop_softc *sc, uint32_t cpu_mhz)
{
 uint32_t corediv, plldiv;

 cpufreq_mhz_to_div(sc, cpu_mhz, &corediv, &plldiv);
 return (cpufreq_mhz_from_div(sc, corediv, plldiv));
}
