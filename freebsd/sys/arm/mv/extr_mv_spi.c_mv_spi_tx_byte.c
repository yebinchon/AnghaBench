
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
struct spi_command {size_t tx_cmd_sz; scalar_t__ tx_data; scalar_t__ tx_cmd; } ;
struct mv_spi_softc {int sc_written; struct spi_command* sc_cmd; } ;


 int MV_SPI_DATAOUT ;
 int MV_SPI_WRITE (struct mv_spi_softc*,int ,int ) ;

__attribute__((used)) static __inline void
mv_spi_tx_byte(struct mv_spi_softc *sc)
{
 struct spi_command *cmd;
 uint32_t written;
 uint8_t *p;

 cmd = sc->sc_cmd;
 p = (uint8_t *)cmd->tx_cmd;
 written = sc->sc_written++;
 if (written >= cmd->tx_cmd_sz) {
  p = (uint8_t *)cmd->tx_data;
  written -= cmd->tx_cmd_sz;
 }
 MV_SPI_WRITE(sc, MV_SPI_DATAOUT, p[written]);
}
