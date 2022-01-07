
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_rtc_softc {int * res; } ;
typedef int bus_size_t ;


 int bus_read_4 (int ,int ) ;

__attribute__((used)) static uint32_t
mv_rtc_reg_read(struct mv_rtc_softc *sc, bus_size_t off)
{

 return (bus_read_4(sc->res[0], off));
}
