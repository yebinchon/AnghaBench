
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct spi_command {scalar_t__ tx_cmd_sz; scalar_t__ rx_cmd_sz; scalar_t__ tx_data_sz; scalar_t__ rx_data_sz; } ;
struct mv_spi_softc {int sc_flags; int sc_written; scalar_t__ sc_len; scalar_t__ sc_read; struct spi_command* sc_cmd; int sc_mtx; } ;
typedef int device_t ;


 int DELAY (int) ;
 int EINVAL ;
 int EIO ;
 int KASSERT (int,char*) ;
 int MV_SPI_BUSY ;
 int MV_SPI_CONF ;
 int MV_SPI_CONF_CLOCK_MASK ;
 int MV_SPI_CONF_CLOCK_SPPRHI_MASK ;
 int MV_SPI_CONF_CLOCK_SPPRHI_SHIFT ;
 int MV_SPI_CONF_CLOCK_SPPR_MASK ;
 int MV_SPI_CONF_CLOCK_SPPR_SHIFT ;
 int MV_SPI_CONF_CLOCK_SPR_MASK ;
 int MV_SPI_CONF_MODE_MASK ;
 int MV_SPI_CONF_MODE_SHIFT ;
 int MV_SPI_CONTROL ;
 int MV_SPI_CTRL_CS_ACTIVE ;
 int MV_SPI_CTRL_CS_MASK ;
 int MV_SPI_CTRL_CS_SHIFT ;
 int MV_SPI_CTRL_SMEMREADY ;
 int MV_SPI_INTR_MASK ;
 int MV_SPI_INTR_STAT ;
 int MV_SPI_LOCK (struct mv_spi_softc*) ;
 int MV_SPI_READ (struct mv_spi_softc*,int ) ;
 int MV_SPI_UNLOCK (struct mv_spi_softc*) ;
 int MV_SPI_WRITE (struct mv_spi_softc*,int ,int) ;
 int SPIBUS_CS_HIGH ;
 int device_get_nameunit (int ) ;
 struct mv_spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int ) ;
 int mtx_sleep (int ,int *,int ,char*,int ) ;
 scalar_t__ mv_spi_psc_calc (int,int*,int*) ;
 int mv_spi_rx_byte (struct mv_spi_softc*) ;
 int mv_spi_tx_byte (struct mv_spi_softc*) ;
 int spibus_get_clock (int ,int*) ;
 int spibus_get_cs (int ,int*) ;
 int spibus_get_mode (int ,int*) ;
 int wakeup_one (int ) ;

__attribute__((used)) static int
mv_spi_transfer(device_t dev, device_t child, struct spi_command *cmd)
{
 struct mv_spi_softc *sc;
 uint32_t clock, cs, mode, reg, spr, sppr;
 int resid, timeout;

 KASSERT(cmd->tx_cmd_sz == cmd->rx_cmd_sz,
     ("TX/RX command sizes should be equal"));
 KASSERT(cmd->tx_data_sz == cmd->rx_data_sz,
     ("TX/RX data sizes should be equal"));


 spibus_get_cs(child, &cs);
 cs &= ~SPIBUS_CS_HIGH;
 spibus_get_mode(child, &mode);
 if (mode > 3) {
  device_printf(dev,
      "Invalid mode %u requested by %s\n", mode,
      device_get_nameunit(child));
  return (EINVAL);
 }
 spibus_get_clock(child, &clock);
 if (clock == 0 || mv_spi_psc_calc(clock, &spr, &sppr) != 0) {
  device_printf(dev,
      "Invalid clock %uHz requested by %s\n", clock,
      device_get_nameunit(child));
  return (EINVAL);
 }

 sc = device_get_softc(dev);
 MV_SPI_LOCK(sc);


 while (sc->sc_flags & MV_SPI_BUSY)
  mtx_sleep(dev, &sc->sc_mtx, 0, "mv_spi", 0);


 sc->sc_flags = MV_SPI_BUSY;


 sc->sc_cmd = cmd;
 sc->sc_read = 0;
 sc->sc_written = 0;
 sc->sc_len = cmd->tx_cmd_sz + cmd->tx_data_sz;


 reg = MV_SPI_READ(sc, MV_SPI_CONF);
 reg &= ~(MV_SPI_CONF_MODE_MASK | MV_SPI_CONF_CLOCK_MASK);
 reg |= mode << MV_SPI_CONF_MODE_SHIFT;
 reg |= spr & MV_SPI_CONF_CLOCK_SPR_MASK;
 reg |= (sppr & MV_SPI_CONF_CLOCK_SPPR_MASK) <<
     MV_SPI_CONF_CLOCK_SPPR_SHIFT;
 reg |= (sppr & MV_SPI_CONF_CLOCK_SPPRHI_MASK) <<
     MV_SPI_CONF_CLOCK_SPPRHI_SHIFT;
 MV_SPI_WRITE(sc, MV_SPI_CONTROL, reg);


 reg = (cs & MV_SPI_CTRL_CS_MASK) << MV_SPI_CTRL_CS_SHIFT;
 MV_SPI_WRITE(sc, MV_SPI_CONTROL, reg);
 reg = MV_SPI_READ(sc, MV_SPI_CONTROL);
 MV_SPI_WRITE(sc, MV_SPI_CONTROL, reg | MV_SPI_CTRL_CS_ACTIVE);

 while ((resid = sc->sc_len - sc->sc_written) > 0) {

  MV_SPI_WRITE(sc, MV_SPI_INTR_STAT, 0);





  mv_spi_tx_byte(sc);
  timeout = 1000;
  while (--timeout > 0) {
   reg = MV_SPI_READ(sc, MV_SPI_CONTROL);
   if (reg & MV_SPI_CTRL_SMEMREADY)
    break;
   DELAY(1);
  }
  if (timeout == 0)
   break;
  mv_spi_rx_byte(sc);
 }


 reg = MV_SPI_READ(sc, MV_SPI_CONTROL);
 MV_SPI_WRITE(sc, MV_SPI_CONTROL, reg & ~MV_SPI_CTRL_CS_ACTIVE);
 MV_SPI_WRITE(sc, MV_SPI_INTR_MASK, 0);
 MV_SPI_WRITE(sc, MV_SPI_INTR_STAT, 0);


 sc->sc_flags = 0;
 wakeup_one(dev);
 MV_SPI_UNLOCK(sc);





 return ((timeout == 0) ? EIO : 0);
}
