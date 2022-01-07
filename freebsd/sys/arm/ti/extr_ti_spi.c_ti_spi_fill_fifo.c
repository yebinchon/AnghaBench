
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
struct ti_spi_softc {int sc_fifolvl; int sc_cs; scalar_t__ sc_written; scalar_t__ sc_len; struct spi_command* sc_cmd; } ;
struct spi_command {size_t tx_cmd_sz; scalar_t__ tx_data; scalar_t__ tx_cmd; } ;


 int DELAY (int) ;
 int MCSPI_STAT_CH (int ) ;
 int MCSPI_STAT_TXS ;
 int MCSPI_TX_CH (int ) ;
 int TI_SPI_READ (struct ti_spi_softc*,int ) ;
 int TI_SPI_WRITE (struct ti_spi_softc*,int ,int ) ;
 int min (scalar_t__,int) ;

__attribute__((used)) static int
ti_spi_fill_fifo(struct ti_spi_softc *sc)
{
 int bytes, timeout;
 struct spi_command *cmd;
 uint32_t written;
 uint8_t *data;

 cmd = sc->sc_cmd;
 bytes = min(sc->sc_len - sc->sc_written, sc->sc_fifolvl);
 while (bytes-- > 0) {
  data = (uint8_t *)cmd->tx_cmd;
  written = sc->sc_written++;
  if (written >= cmd->tx_cmd_sz) {
   data = (uint8_t *)cmd->tx_data;
   written -= cmd->tx_cmd_sz;
  }
  if (sc->sc_fifolvl == 1) {

   timeout = 1000;
   while (--timeout > 0 && (TI_SPI_READ(sc,
       MCSPI_STAT_CH(sc->sc_cs)) & MCSPI_STAT_TXS) == 0) {
    DELAY(100);
   }
   if (timeout == 0)
    return (-1);
  }
  TI_SPI_WRITE(sc, MCSPI_TX_CH(sc->sc_cs), data[written]);
 }

 return (0);
}
