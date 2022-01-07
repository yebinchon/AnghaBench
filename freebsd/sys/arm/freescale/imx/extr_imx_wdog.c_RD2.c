
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct imx_wdog_softc {int * sc_res; } ;
typedef int bus_size_t ;


 size_t MEMRES ;
 int bus_read_2 (int ,int ) ;

__attribute__((used)) static inline uint16_t
RD2(struct imx_wdog_softc *sc, bus_size_t offs)
{

 return (bus_read_2(sc->sc_res[MEMRES], offs));
}
