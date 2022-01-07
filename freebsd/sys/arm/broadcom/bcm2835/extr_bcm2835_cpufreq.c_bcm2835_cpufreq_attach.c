
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
struct TYPE_2__ {struct bcm2835_cpufreq_softc* ich_arg; int ich_func; } ;
struct bcm2835_cpufreq_softc {int arm_max_freq; int arm_min_freq; int core_max_freq; int core_min_freq; int sdram_max_freq; int sdram_min_freq; TYPE_1__ init_hook; scalar_t__ min_voltage_core; scalar_t__ max_voltage_core; int dev; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLFLAG_WR ;
 int CTLTYPE_INT ;
 int ENOMEM ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int *,int ,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct bcm2835_cpufreq_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _hw ;
 int bcm2835_cpufreq_init ;
 int bcm2835_sysctl_ctx ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 int cpufreq_register (int ) ;
 struct bcm2835_cpufreq_softc* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int sema_init (int *,int,char*) ;
 int sysctl_bcm2835_cpufreq_arm_freq ;
 int sysctl_bcm2835_cpufreq_core_freq ;
 int sysctl_bcm2835_cpufreq_sdram_freq ;
 int sysctl_bcm2835_cpufreq_temperature ;
 int sysctl_bcm2835_cpufreq_turbo ;
 int sysctl_bcm2835_cpufreq_voltage_core ;
 int sysctl_bcm2835_cpufreq_voltage_sdram ;
 int sysctl_bcm2835_cpufreq_voltage_sdram_c ;
 int sysctl_bcm2835_cpufreq_voltage_sdram_i ;
 int sysctl_bcm2835_cpufreq_voltage_sdram_p ;
 int sysctl_ctx_init (int *) ;
 int vc_sema ;

__attribute__((used)) static int
bcm2835_cpufreq_attach(device_t dev)
{
 struct bcm2835_cpufreq_softc *sc;
 struct sysctl_oid *oid;


 sc = device_get_softc(dev);
 sc->dev = dev;


 sc->arm_max_freq = -1;
 sc->arm_min_freq = -1;
 sc->core_max_freq = -1;
 sc->core_min_freq = -1;
 sc->sdram_max_freq = -1;
 sc->sdram_min_freq = -1;
 sc->max_voltage_core = 0;
 sc->min_voltage_core = 0;


 if (device_get_unit(dev) == 0) {
  sysctl_ctx_init(&bcm2835_sysctl_ctx);

  oid = SYSCTL_ADD_NODE(&bcm2835_sysctl_ctx,
      SYSCTL_STATIC_CHILDREN(_hw), OID_AUTO, "cpufreq",
      CTLFLAG_RD, ((void*)0), "");


  SYSCTL_ADD_PROC(&bcm2835_sysctl_ctx, SYSCTL_CHILDREN(oid),
      OID_AUTO, "arm_freq", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
      sysctl_bcm2835_cpufreq_arm_freq, "IU",
      "ARM frequency (Hz)");
  SYSCTL_ADD_PROC(&bcm2835_sysctl_ctx, SYSCTL_CHILDREN(oid),
      OID_AUTO, "core_freq", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
      sysctl_bcm2835_cpufreq_core_freq, "IU",
      "Core frequency (Hz)");
  SYSCTL_ADD_PROC(&bcm2835_sysctl_ctx, SYSCTL_CHILDREN(oid),
      OID_AUTO, "sdram_freq", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
      sysctl_bcm2835_cpufreq_sdram_freq, "IU",
      "SDRAM frequency (Hz)");


  SYSCTL_ADD_PROC(&bcm2835_sysctl_ctx, SYSCTL_CHILDREN(oid),
      OID_AUTO, "turbo", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
      sysctl_bcm2835_cpufreq_turbo, "IU",
      "Disables dynamic clocking");


  SYSCTL_ADD_PROC(&bcm2835_sysctl_ctx, SYSCTL_CHILDREN(oid),
      OID_AUTO, "voltage_core", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
      sysctl_bcm2835_cpufreq_voltage_core, "I",
      "ARM/GPU core voltage"
      "(offset from 1.2V in units of 0.025V)");
  SYSCTL_ADD_PROC(&bcm2835_sysctl_ctx, SYSCTL_CHILDREN(oid),
      OID_AUTO, "voltage_sdram", CTLTYPE_INT | CTLFLAG_WR, sc,
      0, sysctl_bcm2835_cpufreq_voltage_sdram, "I",
      "SDRAM voltage (offset from 1.2V in units of 0.025V)");


  SYSCTL_ADD_PROC(&bcm2835_sysctl_ctx, SYSCTL_CHILDREN(oid),
      OID_AUTO, "voltage_sdram_c", CTLTYPE_INT | CTLFLAG_RW, sc,
      0, sysctl_bcm2835_cpufreq_voltage_sdram_c, "I",
      "SDRAM controller voltage"
      "(offset from 1.2V in units of 0.025V)");
  SYSCTL_ADD_PROC(&bcm2835_sysctl_ctx, SYSCTL_CHILDREN(oid),
      OID_AUTO, "voltage_sdram_i", CTLTYPE_INT | CTLFLAG_RW, sc,
      0, sysctl_bcm2835_cpufreq_voltage_sdram_i, "I",
      "SDRAM I/O voltage (offset from 1.2V in units of 0.025V)");
  SYSCTL_ADD_PROC(&bcm2835_sysctl_ctx, SYSCTL_CHILDREN(oid),
      OID_AUTO, "voltage_sdram_p", CTLTYPE_INT | CTLFLAG_RW, sc,
      0, sysctl_bcm2835_cpufreq_voltage_sdram_p, "I",
      "SDRAM phy voltage (offset from 1.2V in units of 0.025V)");


  SYSCTL_ADD_PROC(&bcm2835_sysctl_ctx, SYSCTL_CHILDREN(oid),
      OID_AUTO, "temperature", CTLTYPE_INT | CTLFLAG_RD, sc, 0,
      sysctl_bcm2835_cpufreq_temperature, "I",
      "SoC temperature (thousandths of a degree C)");
 }


 sema_init(&vc_sema, 1, "vcsema");


 sc->init_hook.ich_func = bcm2835_cpufreq_init;
 sc->init_hook.ich_arg = sc;

 if (config_intrhook_establish(&sc->init_hook) != 0) {
  device_printf(dev, "config_intrhook_establish failed\n");
  return (ENOMEM);
 }


 cpufreq_register(dev);

 return (0);
}
