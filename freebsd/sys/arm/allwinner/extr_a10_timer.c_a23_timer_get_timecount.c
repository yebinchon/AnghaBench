
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int ;
struct timecounter {scalar_t__ tc_priv; } ;
struct a10_timer_softc {int dummy; } ;


 int TIMER_CURV_REG (int ) ;
 scalar_t__ timer_read_4 (struct a10_timer_softc*,int ) ;

__attribute__((used)) static u_int
a23_timer_get_timecount(struct timecounter *tc)
{
 struct a10_timer_softc *sc;
 uint32_t val;

 sc = (struct a10_timer_softc *)tc->tc_priv;
 if (sc == ((void*)0))
  return (0);

 val = timer_read_4(sc, TIMER_CURV_REG(0));

 return (~0u - val);
}
