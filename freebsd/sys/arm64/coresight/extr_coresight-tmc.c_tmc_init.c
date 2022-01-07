
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tmc_softc {int etf_configured; int dev_type; int res; } ;
typedef int device_t ;


 int CORESIGHT_ETF ;
 int CORESIGHT_ETR ;
 int CORESIGHT_LAR ;
 int CORESIGHT_UNKNOWN ;
 int CORESIGHT_UNLOCK ;


 int DEVID_CONFIGTYPE_M ;
 int TMC_DEVID ;
 int TMC_LAR ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;
 struct tmc_softc* device_get_softc (int ) ;
 int dprintf (int ,char*) ;
 int tmc_configure_etf (int ) ;

__attribute__((used)) static int
tmc_init(device_t dev)
{
 struct tmc_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);


 bus_write_4(sc->res, CORESIGHT_LAR, CORESIGHT_UNLOCK);


 bus_write_4(sc->res, TMC_LAR, CORESIGHT_UNLOCK);

 reg = bus_read_4(sc->res, TMC_DEVID);
 reg &= DEVID_CONFIGTYPE_M;
 switch (reg) {
 case 128:
  sc->dev_type = CORESIGHT_ETR;
  dprintf(dev, "ETR configuration found\n");
  break;
 case 129:
  sc->dev_type = CORESIGHT_ETF;
  dprintf(dev, "ETF configuration found\n");
  if (sc->etf_configured == 0) {
   tmc_configure_etf(dev);
   sc->etf_configured = 1;
  }
  break;
 default:
  sc->dev_type = CORESIGHT_UNKNOWN;
  break;
 }

 return (0);
}
