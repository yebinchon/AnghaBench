
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timecounter {struct hpet_softc* tc_priv; } ;
struct hpet_softc {int mem_res; } ;


 int HPET_MAIN_COUNTER ;
 int bus_read_4 (int ,int ) ;

__attribute__((used)) static u_int
hpet_get_timecount(struct timecounter *tc)
{
 struct hpet_softc *sc;

 sc = tc->tc_priv;
 return (bus_read_4(sc->mem_res, HPET_MAIN_COUNTER));
}
