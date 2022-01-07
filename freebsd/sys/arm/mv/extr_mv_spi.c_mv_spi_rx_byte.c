
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
struct spi_command {size_t rx_cmd_sz; scalar_t__ rx_data; scalar_t__ rx_cmd; } ;
struct mv_spi_softc {int sc_read; struct spi_command* sc_cmd; } ;


 int MV_SPI_DATAIN ;
 int MV_SPI_READ (struct mv_spi_softc*,int ) ;

__attribute__((used)) static __inline void
mv_spi_rx_byte(struct mv_spi_softc *sc)
{
 struct spi_command *cmd;
 uint32_t read;
 uint8_t *p;

 cmd = sc->sc_cmd;
 p = (uint8_t *)cmd->rx_cmd;
 read = sc->sc_read++;
 if (read >= cmd->rx_cmd_sz) {
  p = (uint8_t *)cmd->rx_data;
  read -= cmd->rx_cmd_sz;
 }
 p[read] = MV_SPI_READ(sc, MV_SPI_DATAIN) & 0xff;
}
