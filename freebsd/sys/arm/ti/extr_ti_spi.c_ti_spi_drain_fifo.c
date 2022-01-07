
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
struct ti_spi_softc {int sc_fifolvl; int sc_cs; scalar_t__ sc_read; scalar_t__ sc_len; struct spi_command* sc_cmd; } ;
struct spi_command {size_t rx_cmd_sz; scalar_t__ rx_data; scalar_t__ rx_cmd; } ;


 int DELAY (int) ;
 int MCSPI_RX_CH (int ) ;
 int MCSPI_STAT_CH (int ) ;
 int MCSPI_STAT_RXS ;
 int TI_SPI_READ (struct ti_spi_softc*,int ) ;
 int min (scalar_t__,int) ;

__attribute__((used)) static int
ti_spi_drain_fifo(struct ti_spi_softc *sc)
{
 int bytes, timeout;
 struct spi_command *cmd;
 uint32_t read;
 uint8_t *data;

 cmd = sc->sc_cmd;
 bytes = min(sc->sc_len - sc->sc_read, sc->sc_fifolvl);
 while (bytes-- > 0) {
  data = (uint8_t *)cmd->rx_cmd;
  read = sc->sc_read++;
  if (read >= cmd->rx_cmd_sz) {
   data = (uint8_t *)cmd->rx_data;
   read -= cmd->rx_cmd_sz;
  }
  if (sc->sc_fifolvl == 1) {

   timeout = 1000;
   while (--timeout > 0 && (TI_SPI_READ(sc,
       MCSPI_STAT_CH(sc->sc_cs)) & MCSPI_STAT_RXS) == 0) {
    DELAY(100);
   }
   if (timeout == 0)
    return (-1);
  }
  data[read] = TI_SPI_READ(sc, MCSPI_RX_CH(sc->sc_cs));
 }

 return (0);
}
