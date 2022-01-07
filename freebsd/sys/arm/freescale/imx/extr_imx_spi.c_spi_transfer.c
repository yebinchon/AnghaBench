
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct spi_softc {int debug; int mtx; int dev; int ** cspins; } ;
struct spi_command {int tx_data_sz; int tx_data; int rx_data; int tx_cmd_sz; int tx_cmd; int rx_cmd; } ;
typedef int device_t ;


 size_t CS_MAX ;
 int ECSPI_CTLREG ;
 int EINVAL ;
 int WR4 (struct spi_softc*,int ,int ) ;
 scalar_t__ bootverbose ;
 int device_busy (int ) ;
 struct spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,size_t,...) ;
 int device_unbusy (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int spi_hw_setup (struct spi_softc*,size_t,size_t,size_t) ;
 int spi_set_chipsel (struct spi_softc*,size_t,int) ;
 int spi_xfer_buf (struct spi_softc*,int ,int ,int ) ;
 int spibus_get_clock (int ,size_t*) ;
 int spibus_get_cs (int ,size_t*) ;
 int spibus_get_mode (int ,size_t*) ;

__attribute__((used)) static int
spi_transfer(device_t dev, device_t child, struct spi_command *cmd)
{
 struct spi_softc *sc = device_get_softc(dev);
 uint32_t cs, mode, clock;
 int err;

 spibus_get_cs(child, &cs);
 spibus_get_clock(child, &clock);
 spibus_get_mode(child, &mode);

 if (cs > CS_MAX || sc->cspins[cs] == ((void*)0)) {
  if (sc->debug || bootverbose)
   device_printf(sc->dev, "Invalid chip select %u\n", cs);
  return (EINVAL);
 }

 mtx_lock(&sc->mtx);
 device_busy(sc->dev);

 if (sc->debug >= 1) {
  device_printf(sc->dev,
      "spi_transfer, cs 0x%x clock %u mode %u\n",
      cs, clock, mode);
 }


 spi_hw_setup(sc, cs, mode, clock);
 spi_set_chipsel(sc, cs, 1);


 err = 0;
 if (cmd->tx_cmd_sz > 0)
  err = spi_xfer_buf(sc, cmd->rx_cmd, cmd->tx_cmd,
      cmd->tx_cmd_sz);
 if (cmd->tx_data_sz > 0 && err == 0)
  err = spi_xfer_buf(sc, cmd->rx_data, cmd->tx_data,
      cmd->tx_data_sz);


 spi_set_chipsel(sc, cs, 0);
 WR4(sc, ECSPI_CTLREG, 0);

 device_unbusy(sc->dev);
 mtx_unlock(&sc->mtx);

 return (err);
}
