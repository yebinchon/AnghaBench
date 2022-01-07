
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct hpet_timer {scalar_t__ irq; scalar_t__ mode; int next; int caps; int div; int num; } ;
struct hpet_softc {int num_timers; scalar_t__ legacy_route; int freq; int mem_res; struct hpet_timer* t; } ;
typedef int device_t ;


 int HPET_ISR ;
 int HPET_MAIN_COUNTER ;
 int HPET_TCAP_PER_INT ;
 int HPET_TCNF_TYPE ;
 int HPET_TCNF_VAL_SET ;
 int HPET_TIMER_CAP_CNF (int) ;
 int HPET_TIMER_COMPARATOR (int) ;
 int HPET_TIMER_FSB_ADDR (int) ;
 int HPET_TIMER_FSB_VAL (int) ;
 scalar_t__ PCIB_MAP_MSI (int ,int ,scalar_t__,int*,int*) ;
 scalar_t__ TIMER_PERIODIC ;
 scalar_t__ TIMER_STOPPED ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 int device_get_parent (int ) ;
 struct hpet_softc* device_get_softc (int ) ;
 int hpet_enable (struct hpet_softc*) ;

__attribute__((used)) static int
hpet_resume(device_t dev)
{
 struct hpet_softc *sc;
 struct hpet_timer *t;
 int i;


 sc = device_get_softc(dev);
 hpet_enable(sc);

 for (i = 0; i < sc->num_timers; i++) {
  t = &sc->t[i];
  if (t->mode == TIMER_STOPPED)
   continue;
  t->next = bus_read_4(sc->mem_res, HPET_MAIN_COUNTER);
  if (t->mode == TIMER_PERIODIC &&
      (t->caps & HPET_TCAP_PER_INT) != 0) {
   t->caps |= HPET_TCNF_TYPE;
   t->next += t->div;
   bus_write_4(sc->mem_res, HPET_TIMER_CAP_CNF(t->num),
       t->caps | HPET_TCNF_VAL_SET);
   bus_write_4(sc->mem_res, HPET_TIMER_COMPARATOR(t->num),
       t->next);
   bus_read_4(sc->mem_res, HPET_TIMER_COMPARATOR(t->num));
   bus_write_4(sc->mem_res, HPET_TIMER_COMPARATOR(t->num),
       t->div);
  } else {
   t->next += sc->freq / 1024;
   bus_write_4(sc->mem_res, HPET_TIMER_COMPARATOR(t->num),
       t->next);
  }
  bus_write_4(sc->mem_res, HPET_ISR, 1 << t->num);
  bus_write_4(sc->mem_res, HPET_TIMER_CAP_CNF(t->num), t->caps);
 }
 return (0);
}
