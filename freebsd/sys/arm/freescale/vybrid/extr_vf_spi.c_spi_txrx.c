
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct spi_softc {int dummy; } ;


 int PUSHR_CONT ;
 int PUSHR_CTCNT ;
 int PUSHR_EOQ ;
 int PUSHR_PCS_S ;
 int READ1 (struct spi_softc*,int ) ;
 int READ4 (struct spi_softc*,int ) ;
 int SPI_FIFO_SIZE ;
 int SPI_POPR ;
 int SPI_PUSHR ;
 int SPI_SR ;
 int SR_EOQF ;
 int SR_RFDF ;
 int SR_TCF ;
 int WRITE4 (struct spi_softc*,int ,int) ;

__attribute__((used)) static int
spi_txrx(struct spi_softc *sc, uint8_t *out_buf,
    uint8_t *in_buf, int bufsz, int cs)
{
 uint32_t reg, wreg;
 uint32_t txcnt;
 uint32_t i;

 txcnt = 0;

 for (i = 0; i < bufsz; i++) {
  txcnt++;
  wreg = out_buf[i];
  wreg |= PUSHR_CONT;
  wreg |= (cs << PUSHR_PCS_S);
  if (i == 0)
   wreg |= PUSHR_CTCNT;
  if (i == (bufsz - 1) || txcnt == SPI_FIFO_SIZE)
   wreg |= PUSHR_EOQ;
  WRITE4(sc, SPI_PUSHR, wreg);

  if (i == (bufsz - 1) || txcnt == SPI_FIFO_SIZE) {
   txcnt = 0;


   while((READ4(sc, SPI_SR) & SR_EOQF) == 0)
    continue;

   reg = READ4(sc, SPI_SR);
   reg |= (SR_TCF | SR_EOQF);
   WRITE4(sc, SPI_SR, reg);
  }


  while((READ4(sc, SPI_SR) & SR_RFDF) == 0)
   continue;

  in_buf[i] = READ1(sc, SPI_POPR);
 }

 return (0);
}
