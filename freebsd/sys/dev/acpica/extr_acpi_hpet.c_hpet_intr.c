
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hpet_softc {int useirq; int num_timers; int * t; int mem_res; } ;


 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int HPET_ISR ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 int hpet_intr_single (int *) ;

__attribute__((used)) static int
hpet_intr(void *arg)
{
 struct hpet_softc *sc = (struct hpet_softc *)arg;
 int i;
 uint32_t val;

 val = bus_read_4(sc->mem_res, HPET_ISR);
 if (val) {
  bus_write_4(sc->mem_res, HPET_ISR, val);
  val &= sc->useirq;
  for (i = 0; i < sc->num_timers; i++) {
   if ((val & (1 << i)) == 0)
    continue;
   hpet_intr_single(&sc->t[i]);
  }
  return (FILTER_HANDLED);
 }
 return (FILTER_STRAY);
}
