
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct oppt {int mv; int mhz; } ;
struct imx6_anatop_softc {int refosc_mhz; int cpu_maxmv; int cpu_maxmhz; int cpu_minmv; int cpu_minmhz; int cpu_maxmhz_hw; int cpu_overclock_enable; int cpu_curmhz; } ;


 int CTLFLAG_NOFETCH ;
 int CTLFLAG_RD ;
 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int FSL_OCOTP_CFG3 ;
 size_t FSL_OCOTP_CFG3_SPEED_MASK ;
 size_t FSL_OCOTP_CFG3_SPEED_SHIFT ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct imx6_anatop_softc*,int ,int ,char*,char*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int TUNABLE_INT_FETCH (char*,int *) ;
 int _hw_imx ;
 struct oppt* cpufreq_nearest_oppt (struct imx6_anatop_softc*,int ) ;
 int cpufreq_set_clock (struct imx6_anatop_softc*,struct oppt*) ;
 int cpufreq_sysctl_maxmhz ;
 int cpufreq_sysctl_minmhz ;
 size_t fsl_ocotp_read_4 (int ) ;
 int * imx6_ocotp_mhz_tab ;

__attribute__((used)) static void
cpufreq_initialize(struct imx6_anatop_softc *sc)
{
 uint32_t cfg3speed;
 struct oppt * op;

 SYSCTL_ADD_INT(((void*)0), SYSCTL_STATIC_CHILDREN(_hw_imx),
     OID_AUTO, "cpu_mhz", CTLFLAG_RD, &sc->cpu_curmhz, 0,
     "CPU frequency");

 SYSCTL_ADD_PROC(((void*)0), SYSCTL_STATIC_CHILDREN(_hw_imx),
     OID_AUTO, "cpu_minmhz", CTLTYPE_INT | CTLFLAG_RWTUN | CTLFLAG_NOFETCH,
     sc, 0, cpufreq_sysctl_minmhz, "IU", "Minimum CPU frequency");

 SYSCTL_ADD_PROC(((void*)0), SYSCTL_STATIC_CHILDREN(_hw_imx),
     OID_AUTO, "cpu_maxmhz", CTLTYPE_INT | CTLFLAG_RWTUN | CTLFLAG_NOFETCH,
     sc, 0, cpufreq_sysctl_maxmhz, "IU", "Maximum CPU frequency");

 SYSCTL_ADD_INT(((void*)0), SYSCTL_STATIC_CHILDREN(_hw_imx),
     OID_AUTO, "cpu_maxmhz_hw", CTLFLAG_RD, &sc->cpu_maxmhz_hw, 0,
     "Maximum CPU frequency allowed by hardware");

 SYSCTL_ADD_INT(((void*)0), SYSCTL_STATIC_CHILDREN(_hw_imx),
     OID_AUTO, "cpu_overclock_enable", CTLFLAG_RWTUN,
     &sc->cpu_overclock_enable, 0,
     "Allow setting CPU frequency higher than cpu_maxmhz_hw");






 sc->refosc_mhz = 24;
 cfg3speed = (fsl_ocotp_read_4(FSL_OCOTP_CFG3) &
     FSL_OCOTP_CFG3_SPEED_MASK) >> FSL_OCOTP_CFG3_SPEED_SHIFT;
 sc->cpu_maxmhz_hw = imx6_ocotp_mhz_tab[cfg3speed];
 sc->cpu_maxmhz = sc->cpu_maxmhz_hw;

 TUNABLE_INT_FETCH("hw.imx6.cpu_minmhz", &sc->cpu_minmhz);
 op = cpufreq_nearest_oppt(sc, sc->cpu_minmhz);
 sc->cpu_minmhz = op->mhz;
 sc->cpu_minmv = op->mv;

 TUNABLE_INT_FETCH("hw.imx6.cpu_maxmhz", &sc->cpu_maxmhz);
 op = cpufreq_nearest_oppt(sc, sc->cpu_maxmhz);
 sc->cpu_maxmhz = op->mhz;
 sc->cpu_maxmv = op->mv;
 cpufreq_set_clock(sc, op);
}
