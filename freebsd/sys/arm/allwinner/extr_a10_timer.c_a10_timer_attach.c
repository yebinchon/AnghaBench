
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct a10_timer_softc {int timer0_freq; int sc_dev; int * res; int sc_ih; int type; } ;
typedef int device_t ;
typedef int clk_t ;
struct TYPE_5__ {int ocd_data; } ;
struct TYPE_4__ {int tc_frequency; struct a10_timer_softc* tc_priv; } ;


 size_t A10_TIMER_IRQRES ;
 int ENXIO ;
 int INTR_TYPE_CLK ;
 int SYS_TIMER_CLKSRC ;
 int a10_timer_delay ;
 int a10_timer_eventtimer_setup (struct a10_timer_softc*) ;
 int a10_timer_irq ;
 int a10_timer_spec ;
 TYPE_1__ a10_timer_timecounter ;
 int a23_timer_timecounter_setup (struct a10_timer_softc*) ;
 int arm_set_delay (int ,struct a10_timer_softc*) ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int ,int ,int *,struct a10_timer_softc*,int *) ;
 scalar_t__ clk_get_by_ofw_index (int ,int ,int ,int *) ;
 scalar_t__ clk_get_freq (int ,int*) ;
 int compat_data ;
 struct a10_timer_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int hz ;
 TYPE_2__* ofw_bus_search_compatible (int ,int ) ;
 int stathz ;
 int tc_init (TYPE_1__*) ;

__attribute__((used)) static int
a10_timer_attach(device_t dev)
{
 struct a10_timer_softc *sc;
 clk_t clk;
 int err;

 sc = device_get_softc(dev);
 sc->type = ofw_bus_search_compatible(dev, compat_data)->ocd_data;

 if (bus_alloc_resources(dev, a10_timer_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 sc->sc_dev = dev;


 err = bus_setup_intr(dev, sc->res[A10_TIMER_IRQRES], INTR_TYPE_CLK,
     a10_timer_irq, ((void*)0), sc, &sc->sc_ih);
 if (err != 0) {
  bus_release_resources(dev, a10_timer_spec, sc->res);
  device_printf(dev, "Unable to setup the clock irq handler, "
      "err = %d\n", err);
  return (ENXIO);
 }

 if (clk_get_by_ofw_index(dev, 0, 0, &clk) != 0)
  sc->timer0_freq = SYS_TIMER_CLKSRC;
 else {
  if (clk_get_freq(clk, &sc->timer0_freq) != 0) {
   device_printf(dev, "Cannot get clock source frequency\n");
   return (ENXIO);
  }
 }
 if (bootverbose) {
  device_printf(sc->sc_dev, "clock: hz=%d stathz = %d\n", hz, stathz);

  device_printf(sc->sc_dev, "event timer clock frequency %ju\n",
      sc->timer0_freq);
  device_printf(sc->sc_dev, "timecounter clock frequency %jd\n",
      a10_timer_timecounter.tc_frequency);
 }

 return (0);
}
