
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aw_thermal_softc {int cf_task; } ;
typedef void* device_t ;


 int ALARM_INT_ALL ;
 int RB_POWEROFF ;
 int RD4 (struct aw_thermal_softc*,int ) ;
 int SHUT_INT_ALL ;
 int THS_INTS ;
 int WR4 (struct aw_thermal_softc*,int ,int) ;
 struct aw_thermal_softc* device_get_softc (void*) ;
 int device_printf (void*,char*) ;
 int shutdown_nice (int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static void
aw_thermal_intr(void *arg)
{
 struct aw_thermal_softc *sc;
 device_t dev;
 uint32_t ints;

 dev = arg;
 sc = device_get_softc(dev);

 ints = RD4(sc, THS_INTS);
 WR4(sc, THS_INTS, ints);

 if ((ints & SHUT_INT_ALL) != 0) {
  device_printf(dev,
      "WARNING - current temperature exceeds safe limits\n");
  shutdown_nice(RB_POWEROFF);
 }

 if ((ints & ALARM_INT_ALL) != 0)
  taskqueue_enqueue(taskqueue_thread, &sc->cf_task);
}
