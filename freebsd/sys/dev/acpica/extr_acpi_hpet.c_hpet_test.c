
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct hpet_softc {int dev; int mem_res; } ;
struct bintime {int dummy; } ;


 int HPET_MAIN_COUNTER ;
 int bintime2timespec (struct bintime*,struct timespec*) ;
 int bintime_sub (struct bintime*,struct bintime*) ;
 int binuptime (struct bintime*) ;
 scalar_t__ bus_read_4 (int ,int ) ;
 int device_printf (int ,char*,int,...) ;

__attribute__((used)) static void
hpet_test(struct hpet_softc *sc)
{
 int i;
 uint32_t u1, u2;
 struct bintime b0, b1, b2;
 struct timespec ts;

 binuptime(&b0);
 binuptime(&b0);
 binuptime(&b1);
 u1 = bus_read_4(sc->mem_res, HPET_MAIN_COUNTER);
 for (i = 1; i < 1000; i++)
  u2 = bus_read_4(sc->mem_res, HPET_MAIN_COUNTER);
 binuptime(&b2);
 u2 = bus_read_4(sc->mem_res, HPET_MAIN_COUNTER);

 bintime_sub(&b2, &b1);
 bintime_sub(&b1, &b0);
 bintime_sub(&b2, &b1);
 bintime2timespec(&b2, &ts);

 device_printf(sc->dev, "%ld.%09ld: %u ... %u = %u\n",
     (long)ts.tv_sec, ts.tv_nsec, u1, u2, u2 - u1);

 device_printf(sc->dev, "time per call: %ld ns\n", ts.tv_nsec / 1000);
}
