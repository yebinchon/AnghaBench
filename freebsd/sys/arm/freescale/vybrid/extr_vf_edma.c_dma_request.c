
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_softc {int dummy; } ;


 int DMA_TCDn_CSR (int) ;
 int TCD_CSR_START ;
 int TCD_READ2 (struct edma_softc*,int ) ;
 int TCD_WRITE2 (struct edma_softc*,int ,int) ;

__attribute__((used)) static int
dma_request(struct edma_softc *sc, int chnum)
{
 int reg;


 reg = TCD_READ2(sc, DMA_TCDn_CSR(chnum));
 reg |= TCD_CSR_START;
 TCD_WRITE2(sc, DMA_TCDn_CSR(chnum), reg);

 return (0);
}
