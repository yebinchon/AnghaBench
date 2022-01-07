
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_rtc_softc {int * res; } ;
typedef int bus_size_t ;


 int DELAY (int) ;
 size_t RTC_RES ;
 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static inline int
mv_rtc_reg_write(struct mv_rtc_softc *sc, bus_size_t off, uint32_t val)
{

 bus_write_4(sc->res[RTC_RES], off, val);
 DELAY(5);

 return (0);
}
