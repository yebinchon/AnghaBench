
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct epit_softc {int clkfreq; } ;


 int epit_read_counter (struct epit_softc*) ;

__attribute__((used)) static void
epit_do_delay(int usec, void *arg)
{
 struct epit_softc *sc = arg;
 uint64_t curcnt, endcnt, startcnt, ticks;
 ticks = 1 + ((uint64_t)usec * sc->clkfreq) / 1000000;
 curcnt = startcnt = epit_read_counter(sc);
 endcnt = startcnt + ticks;
 while (curcnt < endcnt) {
  curcnt = epit_read_counter(sc);
  if (curcnt < startcnt)
   curcnt += 1ULL << 32;
 }
}
