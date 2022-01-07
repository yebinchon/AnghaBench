
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx6_anatop_softc {int cpu_init_done; int cpu_curmv; int cpu_curmhz; int dev; } ;
typedef int device_t ;


 int BUS_PASS_CPU ;
 int BUS_PASS_ORDER_MIDDLE ;
 scalar_t__ bootverbose ;
 int const bus_current_pass ;
 int bus_generic_new_pass (int ) ;
 int cpufreq_initialize (struct imx6_anatop_softc*) ;
 struct imx6_anatop_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ,int ) ;
 int initialize_tempmon (struct imx6_anatop_softc*) ;

__attribute__((used)) static void
imx6_anatop_new_pass(device_t dev)
{
 struct imx6_anatop_softc *sc;
 const int cpu_init_pass = BUS_PASS_CPU + BUS_PASS_ORDER_MIDDLE;







 sc = device_get_softc(dev);
 if (!sc->cpu_init_done && bus_current_pass >= cpu_init_pass) {
  sc->cpu_init_done = 1;
  cpufreq_initialize(sc);
  initialize_tempmon(sc);
  if (bootverbose) {
   device_printf(sc->dev, "CPU %uMHz @ %umV\n",
       sc->cpu_curmhz, sc->cpu_curmv);
  }
 }
 bus_generic_new_pass(dev);
}
