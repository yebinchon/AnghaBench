
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct spi_softc {int dummy; } ;


 int CH_CFG ;
 int CS_REG ;
 int NSSOUT ;
 int READ1 (struct spi_softc*,int ) ;
 int READ4 (struct spi_softc*,int ) ;
 int RX_FIFO_LVL_M ;
 int RX_FIFO_LVL_S ;
 int SPI_RX_DATA ;
 int SPI_STATUS ;
 int SPI_TX_DATA ;
 int SW_RST ;
 int TX_FIFO_LVL_M ;
 int TX_FIFO_LVL_S ;
 int WRITE1 (struct spi_softc*,int ,int ) ;
 int WRITE4 (struct spi_softc*,int ,int) ;

__attribute__((used)) static int
spi_txrx(struct spi_softc *sc, uint8_t *out_buf,
    uint8_t *in_buf, int bufsz, int cs)
{
 uint32_t reg;
 uint32_t i;

 if (bufsz == 0) {

  return (0);
 }


 reg = READ4(sc, CH_CFG);
 reg |= SW_RST;
 WRITE4(sc, CH_CFG, reg);
 reg &= ~SW_RST;
 WRITE4(sc, CH_CFG, reg);


 reg = READ4(sc, CS_REG);
 reg &= ~NSSOUT;
 WRITE4(sc, CS_REG, reg);

 for (i = 0; i < bufsz; i++) {




  while (READ4(sc, SPI_STATUS) & (TX_FIFO_LVL_M << TX_FIFO_LVL_S))

   continue;

  WRITE1(sc, SPI_TX_DATA, out_buf[i]);


  while ((READ4(sc, SPI_STATUS) & (RX_FIFO_LVL_M << RX_FIFO_LVL_S)) == 0)

   continue;

  in_buf[i] = READ1(sc, SPI_RX_DATA);
 }


 reg = READ4(sc, CS_REG);
 reg |= NSSOUT;
 WRITE4(sc, CS_REG, reg);

 return (0);
}
