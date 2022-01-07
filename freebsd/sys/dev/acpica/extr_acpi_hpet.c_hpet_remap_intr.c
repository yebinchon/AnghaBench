
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct hpet_timer {scalar_t__ irq; } ;
struct hpet_softc {int num_timers; int mem_res; struct hpet_timer* t; } ;
typedef int device_t ;


 int ENOENT ;
 int HPET_TIMER_FSB_ADDR (int) ;
 int HPET_TIMER_FSB_VAL (int) ;
 int PCIB_MAP_MSI (int ,int ,scalar_t__,int *,int *) ;
 int bus_write_4 (int ,int ,int ) ;
 int device_get_parent (int ) ;
 struct hpet_softc* device_get_softc (int ) ;
 int hpet_disable (struct hpet_softc*) ;
 int hpet_enable (struct hpet_softc*) ;

__attribute__((used)) static int
hpet_remap_intr(device_t dev, device_t child, u_int irq)
{
 struct hpet_softc *sc = device_get_softc(dev);
 struct hpet_timer *t;
 uint64_t addr;
 uint32_t data;
 int error, i;

 for (i = 0; i < sc->num_timers; i++) {
  t = &sc->t[i];
  if (t->irq != irq)
   continue;
  error = PCIB_MAP_MSI(
      device_get_parent(device_get_parent(dev)), dev,
      irq, &addr, &data);
  if (error)
   return (error);
  hpet_disable(sc);
  bus_write_4(sc->mem_res, HPET_TIMER_FSB_ADDR(i), addr);
  bus_write_4(sc->mem_res, HPET_TIMER_FSB_VAL(i), data);
  hpet_enable(sc);
  return (0);
 }
 return (ENOENT);
}
