
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct am335x_ehrpwm_softc {int sc_pwm_period; int sc_pwm_dutyA; int sc_pwm_dutyB; int * sc_mem_res; int sc_mem_rid; int * sc_busdev; void* sc_chanB_oid; void* sc_chanA_oid; void* sc_period_oid; void* sc_freq_oid; void* sc_clkdiv_oid; int sc_dev; } ;
typedef int device_t ;


 int AQCTL_CAU_CLEAR ;
 int AQCTL_CBU_CLEAR ;
 int AQCTL_ZRO_SET ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int DEFAULT_PWM_PERIOD ;
 int ENXIO ;
 int EPWM_AQCTLA ;
 int EPWM_AQCTLB ;
 int EPWM_CMPA ;
 int EPWM_CMPB ;
 int EPWM_READ2 (struct am335x_ehrpwm_softc*,int ) ;
 int EPWM_TBCTL ;
 int EPWM_TBPRD ;
 int EPWM_TZCTL ;
 int EPWM_TZFLG ;
 int EPWM_WRITE2 (struct am335x_ehrpwm_softc*,int ,int) ;
 int OID_AUTO ;
 int PWM_LOCK_DESTROY (struct am335x_ehrpwm_softc*) ;
 int PWM_LOCK_INIT (struct am335x_ehrpwm_softc*) ;
 int RF_ACTIVE ;
 void* SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct am335x_ehrpwm_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYS_RES_MEMORY ;
 int TBCTL_CLKDIV_MASK ;
 int TBCTL_CTRMODE_MASK ;
 int TBCTL_CTRMODE_UP ;
 int TBCTL_FREERUN ;
 int TBCTL_HSPCLKDIV_MASK ;
 int am335x_ehrpwm_freq (struct am335x_ehrpwm_softc*) ;
 int am335x_ehrpwm_sysctl_clkdiv ;
 int am335x_ehrpwm_sysctl_duty ;
 int am335x_ehrpwm_sysctl_freq ;
 int am335x_ehrpwm_sysctl_period ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int * device_add_child (int ,char*,int) ;
 struct am335x_ehrpwm_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
am335x_ehrpwm_attach(device_t dev)
{
 struct am335x_ehrpwm_softc *sc;
 uint32_t reg;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 PWM_LOCK_INIT(sc);

 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->sc_mem_rid, RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0)) {
  device_printf(dev, "cannot allocate memory resources\n");
  goto fail;
 }


 ctx = device_get_sysctl_ctx(sc->sc_dev);
 tree = device_get_sysctl_tree(sc->sc_dev);

 sc->sc_clkdiv_oid = SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "clkdiv", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
     am335x_ehrpwm_sysctl_clkdiv, "I", "PWM clock prescaler");

 sc->sc_freq_oid = SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "freq", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
     am335x_ehrpwm_sysctl_freq, "I", "PWM frequency");

 sc->sc_period_oid = SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "period", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
     am335x_ehrpwm_sysctl_period, "I", "PWM period");

 sc->sc_chanA_oid = SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "dutyA", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
     am335x_ehrpwm_sysctl_duty, "I", "Channel A duty cycles");

 sc->sc_chanB_oid = SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "dutyB", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
     am335x_ehrpwm_sysctl_duty, "I", "Channel B duty cycles");


 reg = EPWM_READ2(sc, EPWM_TBCTL);
 reg &= ~(TBCTL_CLKDIV_MASK | TBCTL_HSPCLKDIV_MASK);
 EPWM_WRITE2(sc, EPWM_TBCTL, reg);

 sc->sc_pwm_period = DEFAULT_PWM_PERIOD;
 sc->sc_pwm_dutyA = 0;
 sc->sc_pwm_dutyB = 0;
 am335x_ehrpwm_freq(sc);

 EPWM_WRITE2(sc, EPWM_TBPRD, sc->sc_pwm_period - 1);
 EPWM_WRITE2(sc, EPWM_CMPA, sc->sc_pwm_dutyA);
 EPWM_WRITE2(sc, EPWM_CMPB, sc->sc_pwm_dutyB);

 EPWM_WRITE2(sc, EPWM_AQCTLA, (AQCTL_ZRO_SET | AQCTL_CAU_CLEAR));
 EPWM_WRITE2(sc, EPWM_AQCTLB, (AQCTL_ZRO_SET | AQCTL_CBU_CLEAR));


 reg &= ~TBCTL_CTRMODE_MASK;
 reg |= TBCTL_CTRMODE_UP | TBCTL_FREERUN;
 EPWM_WRITE2(sc, EPWM_TBCTL, reg);

 EPWM_WRITE2(sc, EPWM_TZCTL, 0xf);
 reg = EPWM_READ2(sc, EPWM_TZFLG);

 if ((sc->sc_busdev = device_add_child(dev, "pwmbus", -1)) == ((void*)0)) {
  device_printf(dev, "Cannot add child pwmbus\n");

 }

 bus_generic_probe(dev);
 return (bus_generic_attach(dev));
fail:
 PWM_LOCK_DESTROY(sc);
 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->sc_mem_rid, sc->sc_mem_res);

 return(ENXIO);
}
