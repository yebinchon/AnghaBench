
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct spi_command {scalar_t__ tx_cmd_sz; scalar_t__ rx_cmd_sz; scalar_t__ tx_data_sz; scalar_t__ rx_data_sz; } ;
struct bcm_spi_softc {int sc_flags; scalar_t__ sc_len; int sc_dev; int sc_mtx; scalar_t__ sc_written; scalar_t__ sc_read; struct spi_command* sc_cmd; } ;
typedef int device_t ;


 int BCM_SPI_BUSY ;
 int BCM_SPI_LOCK (struct bcm_spi_softc*) ;
 int BCM_SPI_UNLOCK (struct bcm_spi_softc*) ;
 int BCM_SPI_WRITE (struct bcm_spi_softc*,int ,int) ;
 int EINVAL ;
 int EIO ;
 int EWOULDBLOCK ;
 int KASSERT (int,char*) ;
 int SPIBUS_CS_HIGH ;
 int SPIBUS_MODE_CPHA ;
 int SPIBUS_MODE_CPOL ;
 int SPI_CLK ;
 int SPI_CORE_CLK ;
 int SPI_CS ;
 int SPI_CS_CLEAR_RXFIFO ;
 int SPI_CS_CLEAR_TXFIFO ;
 int SPI_CS_CPHA ;
 int SPI_CS_CPOL ;
 int SPI_CS_CSPOL0 ;
 int SPI_CS_CSPOL1 ;
 int SPI_CS_CSPOL2 ;
 int SPI_CS_INTD ;
 int SPI_CS_INTR ;
 int SPI_CS_MASK ;
 int SPI_CS_TA ;
 int bcm_spi_modifyreg (struct bcm_spi_softc*,int ,int,int) ;
 int device_get_nameunit (int ) ;
 struct bcm_spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int hz ;
 int mtx_sleep (int ,int *,int ,char*,int) ;
 int spibus_get_clock (int ,int*) ;
 int spibus_get_cs (int ,int*) ;
 int spibus_get_mode (int ,int*) ;
 int wakeup_one (int ) ;

__attribute__((used)) static int
bcm_spi_transfer(device_t dev, device_t child, struct spi_command *cmd)
{
 struct bcm_spi_softc *sc;
 uint32_t cs, mode, clock;
 int err;

 sc = device_get_softc(dev);

 KASSERT(cmd->tx_cmd_sz == cmd->rx_cmd_sz,
     ("TX/RX command sizes should be equal"));
 KASSERT(cmd->tx_data_sz == cmd->rx_data_sz,
     ("TX/RX data sizes should be equal"));



 spibus_get_cs(child, &cs);
 if ((cs & (~SPIBUS_CS_HIGH)) > 2) {
  device_printf(dev,
      "Invalid chip select %u requested by %s\n", cs,
      device_get_nameunit(child));
  return (EINVAL);
 }

 spibus_get_clock(child, &clock);
 if (clock == 0) {
  device_printf(dev,
      "Invalid clock %uHz requested by %s\n", clock,
      device_get_nameunit(child));
  return (EINVAL);
 }

 spibus_get_mode(child, &mode);
 if (mode > 3) {
  device_printf(dev,
      "Invalid mode %u requested by %s\n", mode,
      device_get_nameunit(child));
  return (EINVAL);
 }


 BCM_SPI_LOCK(sc);
 while (sc->sc_flags & BCM_SPI_BUSY)
  mtx_sleep(dev, &sc->sc_mtx, 0, "bcm_spi", 0);


 sc->sc_flags = BCM_SPI_BUSY;


 bcm_spi_modifyreg(sc, SPI_CS,
     SPI_CS_CLEAR_RXFIFO | SPI_CS_CLEAR_TXFIFO,
     SPI_CS_CLEAR_RXFIFO | SPI_CS_CLEAR_TXFIFO);


 sc->sc_cmd = cmd;
 sc->sc_read = 0;
 sc->sc_written = 0;
 sc->sc_len = cmd->tx_cmd_sz + cmd->tx_data_sz;
 bcm_spi_modifyreg(sc, SPI_CS,
     SPI_CS_CPOL | SPI_CS_CPHA,
     ((mode & SPIBUS_MODE_CPHA) ? SPI_CS_CPHA : 0) |
     ((mode & SPIBUS_MODE_CPOL) ? SPI_CS_CPOL : 0));






 clock = SPI_CORE_CLK / clock;
 if (clock <= 1)
  clock = 2;
 else if (clock % 2)
  clock--;
 if (clock > 0xffff)
  clock = 0;

 BCM_SPI_WRITE(sc, SPI_CLK, clock);





 bcm_spi_modifyreg(sc, SPI_CS,
     SPI_CS_MASK | SPI_CS_TA | SPI_CS_INTR | SPI_CS_INTD,
     (cs & (~SPIBUS_CS_HIGH)) |
     SPI_CS_TA | SPI_CS_INTR | SPI_CS_INTD);


 err = mtx_sleep(dev, &sc->sc_mtx, 0, "bcm_spi", hz * 2);


 bcm_spi_modifyreg(sc, SPI_CS, SPI_CS_TA | SPI_CS_INTR | SPI_CS_INTD, 0);


 sc->sc_flags = 0;
 wakeup_one(dev);
 BCM_SPI_UNLOCK(sc);





 if (err == EWOULDBLOCK) {
  device_printf(sc->sc_dev, "SPI error (timeout)\n");
  err = EIO;
 }

 return (err);
}
