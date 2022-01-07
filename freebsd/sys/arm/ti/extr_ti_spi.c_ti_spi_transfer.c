
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_spi_softc {int sc_numcs; int sc_flags; int sc_cs; scalar_t__ sc_len; int sc_fifolvl; scalar_t__ sc_written; scalar_t__ sc_read; struct spi_command* sc_cmd; int sc_mtx; } ;
struct spi_command {scalar_t__ tx_cmd_sz; scalar_t__ rx_cmd_sz; scalar_t__ tx_data_sz; scalar_t__ rx_data_sz; } ;
typedef int device_t ;


 int EINVAL ;
 int KASSERT (int,char*) ;
 int MCSPI_CONF_CH (int) ;
 int MCSPI_CONF_DMAR ;
 int MCSPI_CONF_DMAW ;
 int MCSPI_CONF_DPE0 ;
 int MCSPI_CONF_DPE1 ;
 int MCSPI_CONF_EPOL ;
 int MCSPI_CONF_FFER ;
 int MCSPI_CONF_FFEW ;
 int MCSPI_CONF_FORCE ;
 int MCSPI_CONF_IS ;
 int MCSPI_CONF_SBE ;
 int MCSPI_CONF_SBPOL ;
 int MCSPI_CONF_TURBO ;
 int MCSPI_CONF_WL8BITS ;
 int MCSPI_CTRL_CH (int) ;
 int MCSPI_CTRL_ENABLE ;
 int MCSPI_IRQENABLE ;
 int MCSPI_IRQSTATUS ;
 int MCSPI_XFERLEVEL ;
 int SPIBUS_CS_HIGH ;
 int TI_SPI_BUSY ;
 int TI_SPI_FIFOSZ ;
 int TI_SPI_LOCK (struct ti_spi_softc*) ;
 int TI_SPI_READ (struct ti_spi_softc*,int ) ;
 int TI_SPI_UNLOCK (struct ti_spi_softc*) ;
 int TI_SPI_WRITE (struct ti_spi_softc*,int ,int) ;
 int device_get_nameunit (int ) ;
 struct ti_spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int ) ;
 int mtx_sleep (int ,int *,int ,char*,int ) ;
 int spibus_get_clock (int ,int*) ;
 int spibus_get_cs (int ,int*) ;
 int spibus_get_mode (int ,int*) ;
 int ti_spi_gcd (scalar_t__,int ) ;
 int ti_spi_pio_transfer (struct ti_spi_softc*) ;
 int ti_spi_set_clock (struct ti_spi_softc*,int,int) ;
 int wakeup_one (int ) ;

__attribute__((used)) static int
ti_spi_transfer(device_t dev, device_t child, struct spi_command *cmd)
{
 int err;
 struct ti_spi_softc *sc;
 uint32_t clockhz, cs, mode, reg;

 sc = device_get_softc(dev);

 KASSERT(cmd->tx_cmd_sz == cmd->rx_cmd_sz,
     ("TX/RX command sizes should be equal"));
 KASSERT(cmd->tx_data_sz == cmd->rx_data_sz,
     ("TX/RX data sizes should be equal"));


 spibus_get_cs(child, &cs);
 spibus_get_clock(child, &clockhz);
 spibus_get_mode(child, &mode);

 cs &= ~SPIBUS_CS_HIGH;

 if (cs > sc->sc_numcs) {
  device_printf(dev, "Invalid chip select %d requested by %s\n",
      cs, device_get_nameunit(child));
  return (EINVAL);
 }

 if (mode > 3)
 {
     device_printf(dev, "Invalid mode %d requested by %s\n", mode,
      device_get_nameunit(child));
     return (EINVAL);
 }

 TI_SPI_LOCK(sc);


 while (sc->sc_flags & TI_SPI_BUSY)
  mtx_sleep(dev, &sc->sc_mtx, 0, "ti_spi", 0);


 sc->sc_flags = TI_SPI_BUSY;


 sc->sc_cs = cs;
 sc->sc_cmd = cmd;
 sc->sc_read = 0;
 sc->sc_written = 0;
 sc->sc_len = cmd->tx_cmd_sz + cmd->tx_data_sz;
 sc->sc_fifolvl = ti_spi_gcd(sc->sc_len, TI_SPI_FIFOSZ);
 if (sc->sc_fifolvl < 2 || sc->sc_len > 0xffff)
  sc->sc_fifolvl = 1;

 sc->sc_fifolvl = 1;


 ti_spi_set_clock(sc, sc->sc_cs, clockhz);


 TI_SPI_WRITE(sc, MCSPI_XFERLEVEL, 0);


 reg = TI_SPI_READ(sc, MCSPI_CONF_CH(sc->sc_cs));
 reg &= ~(MCSPI_CONF_FFER | MCSPI_CONF_FFEW | MCSPI_CONF_SBPOL |
     MCSPI_CONF_SBE | MCSPI_CONF_TURBO | MCSPI_CONF_IS |
     MCSPI_CONF_DPE1 | MCSPI_CONF_DPE0 | MCSPI_CONF_DMAR |
     MCSPI_CONF_DMAW | MCSPI_CONF_EPOL);
 reg |= MCSPI_CONF_DPE0 | MCSPI_CONF_EPOL | MCSPI_CONF_WL8BITS;
 reg |= mode;
 TI_SPI_WRITE(sc, MCSPI_CONF_CH(sc->sc_cs), reg);
 reg = TI_SPI_READ(sc, MCSPI_CTRL_CH(sc->sc_cs));
 TI_SPI_WRITE(sc, MCSPI_CTRL_CH(sc->sc_cs), reg | MCSPI_CTRL_ENABLE);


 reg = TI_SPI_READ(sc, MCSPI_CONF_CH(sc->sc_cs));
 TI_SPI_WRITE(sc, MCSPI_CONF_CH(sc->sc_cs), reg |= MCSPI_CONF_FORCE);

 err = 0;
 if (sc->sc_fifolvl == 1)
  err = ti_spi_pio_transfer(sc);


 reg = TI_SPI_READ(sc, MCSPI_CONF_CH(sc->sc_cs));
 reg &= ~MCSPI_CONF_FORCE;
 TI_SPI_WRITE(sc, MCSPI_CONF_CH(sc->sc_cs), reg);


 reg = TI_SPI_READ(sc, MCSPI_IRQENABLE);
 reg &= ~0xf;
 TI_SPI_WRITE(sc, MCSPI_IRQENABLE, reg);
 TI_SPI_WRITE(sc, MCSPI_IRQSTATUS, 0xf);


 reg = TI_SPI_READ(sc, MCSPI_CTRL_CH(sc->sc_cs));
 reg &= ~MCSPI_CTRL_ENABLE;
 TI_SPI_WRITE(sc, MCSPI_CTRL_CH(sc->sc_cs), reg);


 reg = TI_SPI_READ(sc, MCSPI_CONF_CH(sc->sc_cs));
 reg &= ~(MCSPI_CONF_FFER | MCSPI_CONF_FFEW);
 TI_SPI_WRITE(sc, MCSPI_CONF_CH(sc->sc_cs), reg);


 sc->sc_flags = 0;
 wakeup_one(dev);
 TI_SPI_UNLOCK(sc);

 return (err);
}
