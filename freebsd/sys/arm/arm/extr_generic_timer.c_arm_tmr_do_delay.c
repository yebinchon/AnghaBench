
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct arm_tmr_softc {int physical; scalar_t__ (* get_cntxct ) (int ) ;} ;
typedef int int32_t ;
struct TYPE_2__ {int tc_frequency; } ;


 TYPE_1__ arm_tmr_timecount ;
 scalar_t__ stub1 (int ) ;
 scalar_t__ stub2 (int ) ;

__attribute__((used)) static void
arm_tmr_do_delay(int usec, void *arg)
{
 struct arm_tmr_softc *sc = arg;
 int32_t counts, counts_per_usec;
 uint32_t first, last;


 counts_per_usec = ((arm_tmr_timecount.tc_frequency / 1000000) + 1);







 if (usec >= (0x80000000U / counts_per_usec))
  counts = (0x80000000U / counts_per_usec) - 1;
 else
  counts = usec * counts_per_usec;

 first = sc->get_cntxct(sc->physical);

 while (counts > 0) {
  last = sc->get_cntxct(sc->physical);
  counts -= (int32_t)(last - first);
  first = last;
 }
}
