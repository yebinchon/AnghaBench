
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct etm_softc {int res; } ;
typedef int device_t ;


 int CORESIGHT_LAR ;
 int CORESIGHT_UNLOCK ;
 int TRCIDR (int) ;
 int TRCIDR1_TRCARCHMAJ_M ;
 int TRCIDR1_TRCARCHMAJ_S ;
 int TRCIDR1_TRCARCHMIN_M ;
 int TRCIDR1_TRCARCHMIN_S ;
 int TRCOSLAR ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;
 struct etm_softc* device_get_softc (int ) ;
 int dprintf (char*,int,int) ;

__attribute__((used)) static int
etm_init(device_t dev)
{
 struct etm_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);


 bus_write_4(sc->res, CORESIGHT_LAR, CORESIGHT_UNLOCK);


 bus_write_4(sc->res, TRCOSLAR, 0);

 reg = bus_read_4(sc->res, TRCIDR(1));
 dprintf("ETM Version: %d.%d\n",
     (reg & TRCIDR1_TRCARCHMAJ_M) >> TRCIDR1_TRCARCHMAJ_S,
     (reg & TRCIDR1_TRCARCHMIN_M) >> TRCIDR1_TRCARCHMIN_S);

 return (0);
}
