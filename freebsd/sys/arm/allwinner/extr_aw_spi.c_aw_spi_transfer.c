
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct spi_command {int rx_data_sz; int tx_data_sz; int tx_data; int rx_data; int rx_cmd_sz; int tx_cmd_sz; int tx_cmd; int rx_cmd; } ;
struct aw_spi_softc {int mtx; int mod_freq; int clk_mod; } ;
typedef int device_t ;


 int AW_SPI_GCR ;
 int AW_SPI_GCR_EN ;
 int AW_SPI_GCR_SRST ;
 int AW_SPI_MAX_CS ;
 int AW_SPI_READ_4 (struct aw_spi_softc*,int ) ;
 int AW_SPI_WRITE_4 (struct aw_spi_softc*,int ,int) ;
 int CLK_SET_ROUND_DOWN ;
 int EINVAL ;
 int SPIBUS_CS_HIGH ;
 int aw_spi_setup_clock (struct aw_spi_softc*,int) ;
 int aw_spi_setup_cs (struct aw_spi_softc*,int,int) ;
 int aw_spi_setup_mode (struct aw_spi_softc*,int) ;
 int aw_spi_xfer (struct aw_spi_softc*,int ,int ,int ,int ) ;
 int clk_get_freq (int ,int *) ;
 int clk_set_freq (int ,int,int ) ;
 struct aw_spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int spibus_get_clock (int ,int*) ;
 int spibus_get_cs (int ,int*) ;
 int spibus_get_mode (int ,int*) ;

__attribute__((used)) static int
aw_spi_transfer(device_t dev, device_t child, struct spi_command *cmd)
{
 struct aw_spi_softc *sc;
 uint32_t cs, mode, clock, reg;
 int err = 0;

 sc = device_get_softc(dev);

 spibus_get_cs(child, &cs);
 spibus_get_clock(child, &clock);
 spibus_get_mode(child, &mode);


 clk_set_freq(sc->clk_mod, 2 * clock, CLK_SET_ROUND_DOWN);
 clk_get_freq(sc->clk_mod, &sc->mod_freq);
 if (cs >= AW_SPI_MAX_CS) {
  device_printf(dev, "Invalid cs %d\n", cs);
  return (EINVAL);
 }

 mtx_lock(&sc->mtx);


 reg = AW_SPI_READ_4(sc, AW_SPI_GCR);
 reg |= AW_SPI_GCR_EN | AW_SPI_GCR_SRST;
 AW_SPI_WRITE_4(sc, AW_SPI_GCR, reg);


 aw_spi_setup_clock(sc, clock);
 aw_spi_setup_mode(sc, mode);
 if (cs & SPIBUS_CS_HIGH)
  aw_spi_setup_cs(sc, cs, 0);
 else
  aw_spi_setup_cs(sc, cs, 1);


 err = 0;
 if (cmd->tx_cmd_sz > 0)
  err = aw_spi_xfer(sc, cmd->rx_cmd, cmd->tx_cmd,
      cmd->tx_cmd_sz, cmd->rx_cmd_sz);
 if (cmd->tx_data_sz > 0 && err == 0)
  err = aw_spi_xfer(sc, cmd->rx_data, cmd->tx_data,
      cmd->tx_data_sz, cmd->rx_data_sz);

 if (cs & SPIBUS_CS_HIGH)
  aw_spi_setup_cs(sc, cs, 1);
 else
  aw_spi_setup_cs(sc, cs, 0);


 reg = AW_SPI_READ_4(sc, AW_SPI_GCR);
 reg &= ~AW_SPI_GCR_EN;
 AW_SPI_WRITE_4(sc, AW_SPI_GCR, reg);

 mtx_unlock(&sc->mtx);

 return (err);
}
