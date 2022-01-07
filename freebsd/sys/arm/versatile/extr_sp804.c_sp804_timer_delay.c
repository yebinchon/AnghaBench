
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int tc_frequency; } ;
struct sp804_timer_softc {TYPE_1__ tc; } ;
typedef int int32_t ;


 int sp804_timer_tc_get_timecount (TYPE_1__*) ;

__attribute__((used)) static void
sp804_timer_delay(int usec, void *arg)
{
 struct sp804_timer_softc *sc = arg;
 int32_t counts;
 uint32_t first, last;


 counts = usec * ((sc->tc.tc_frequency / 1000000) + 1);

 first = sp804_timer_tc_get_timecount(&sc->tc);

 while (counts > 0) {
  last = sp804_timer_tc_get_timecount(&sc->tc);
  if (last == first)
   continue;
  if (last > first) {
   counts -= (int32_t)(last - first);
  } else {
   counts -= (int32_t)((0xFFFFFFFF - first) + last);
  }
  first = last;
 }
}
