
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct spi_command {int tx_data_sz; int tx_data; int rx_data; int tx_cmd_sz; int tx_cmd; int rx_cmd; } ;
struct rk_spi_softc {int dummy; } ;
typedef int device_t ;


 int RK_SPI_LOCK (struct rk_spi_softc*) ;
 int RK_SPI_UNLOCK (struct rk_spi_softc*) ;
 struct rk_spi_softc* device_get_softc (int ) ;
 int rk_spi_enable_chip (struct rk_spi_softc*,int) ;
 int rk_spi_hw_setup (struct rk_spi_softc*,int ,int ) ;
 int rk_spi_set_cs (struct rk_spi_softc*,int ,int) ;
 int rk_spi_xfer_buf (struct rk_spi_softc*,int ,int ,int ) ;
 int spibus_get_clock (int ,int *) ;
 int spibus_get_cs (int ,int *) ;
 int spibus_get_mode (int ,int *) ;

__attribute__((used)) static int
rk_spi_transfer(device_t dev, device_t child, struct spi_command *cmd)
{
 struct rk_spi_softc *sc;
 uint32_t cs, mode, clock;
 int err = 0;

 sc = device_get_softc(dev);

 spibus_get_cs(child, &cs);
 spibus_get_clock(child, &clock);
 spibus_get_mode(child, &mode);

 RK_SPI_LOCK(sc);
 rk_spi_hw_setup(sc, mode, clock);
 rk_spi_enable_chip(sc, 1);
 err = rk_spi_set_cs(sc, cs, 1);
 if (err != 0) {
  rk_spi_enable_chip(sc, 0);
  RK_SPI_UNLOCK(sc);
  return (err);
 }


 err = 0;
 if (cmd->tx_cmd_sz > 0)
  err = rk_spi_xfer_buf(sc, cmd->rx_cmd, cmd->tx_cmd,
      cmd->tx_cmd_sz);
 if (cmd->tx_data_sz > 0 && err == 0)
  err = rk_spi_xfer_buf(sc, cmd->rx_data, cmd->tx_data,
      cmd->tx_data_sz);

 rk_spi_set_cs(sc, cs, 0);
 rk_spi_enable_chip(sc, 0);
 RK_SPI_UNLOCK(sc);

 return (err);
}
