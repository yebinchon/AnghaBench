
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct spi_softc {scalar_t__ rxidx; scalar_t__ rxlen; int fifocnt; scalar_t__* rxbuf; } ;


 int ECSPI_RXDATA ;
 int ECSPI_STATREG ;
 int RD4 (struct spi_softc*,int ) ;
 int SREG_RR ;

__attribute__((used)) static void
spi_empty_rxfifo(struct spi_softc *sc)
{

 while (sc->rxidx < sc->rxlen && (RD4(sc, ECSPI_STATREG) & SREG_RR)) {
  sc->rxbuf[sc->rxidx++] = (uint8_t)RD4(sc, ECSPI_RXDATA);
  --sc->fifocnt;
 }
}
