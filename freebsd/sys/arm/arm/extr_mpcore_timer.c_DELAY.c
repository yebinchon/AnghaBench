
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct arm_tmr_softc {int dummy; } ;
typedef int int32_t ;
struct TYPE_4__ {struct arm_tmr_softc* tc_priv; } ;
struct TYPE_3__ {scalar_t__ tc_frequency; } ;


 int TSENTER () ;
 int TSEXIT () ;
 int arm_tmr_delay (int,struct arm_tmr_softc*) ;
 TYPE_2__* arm_tmr_tc ;
 TYPE_1__ arm_tmr_timecount ;
 int cpufunc_nullop () ;

void
DELAY(int usec)
{
 struct arm_tmr_softc *sc;
 int32_t counts;

 TSENTER();

 if (arm_tmr_tc == ((void*)0) || arm_tmr_timecount.tc_frequency == 0) {
  for (; usec > 0; usec--)
   for (counts = 200; counts > 0; counts--)
    cpufunc_nullop();


 } else {
  sc = arm_tmr_tc->tc_priv;
  arm_tmr_delay(usec, sc);
 }
 TSEXIT();
}
