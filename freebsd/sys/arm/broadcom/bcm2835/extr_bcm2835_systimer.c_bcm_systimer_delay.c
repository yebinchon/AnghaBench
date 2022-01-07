
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct bcm_systimer_softc {int dummy; } ;
typedef int int32_t ;
struct TYPE_2__ {int tc_frequency; } ;


 int SYSTIMER_CLO ;
 TYPE_1__ bcm_systimer_tc ;
 int bcm_systimer_tc_read_4 (int ) ;

__attribute__((used)) static void
bcm_systimer_delay(int usec, void *arg)
{
 struct bcm_systimer_softc *sc;
 int32_t counts;
 uint32_t first, last;

 sc = (struct bcm_systimer_softc *) arg;


 counts = usec * (bcm_systimer_tc.tc_frequency / 1000000) + 1;

 first = bcm_systimer_tc_read_4(SYSTIMER_CLO);

 while (counts > 0) {
  last = bcm_systimer_tc_read_4(SYSTIMER_CLO);
  if (last == first)
   continue;
  if (last>first) {
   counts -= (int32_t)(last - first);
  } else {
   counts -= (int32_t)((0xFFFFFFFF - first) + last);
  }
  first = last;
 }
}
