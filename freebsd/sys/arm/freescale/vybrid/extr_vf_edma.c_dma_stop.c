
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_softc {int dummy; } ;


 int DMA_ERQ ;
 int READ4 (struct edma_softc*,int ) ;
 int WRITE4 (struct edma_softc*,int ,int) ;

__attribute__((used)) static int
dma_stop(struct edma_softc *sc, int chnum)
{
 int reg;

 reg = READ4(sc, DMA_ERQ);
 reg &= ~(0x1 << chnum);
 WRITE4(sc, DMA_ERQ, reg);

 return (0);
}
