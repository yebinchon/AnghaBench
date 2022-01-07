
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_softc {int dev; } ;


 int CERR_CAEI ;
 int DMA_CERR ;
 int DMA_ERR ;
 int DMA_ES ;
 int READ4 (struct edma_softc*,int ) ;
 int WRITE1 (struct edma_softc*,int ,int ) ;
 int device_printf (int ,char*,int,int) ;

__attribute__((used)) static void
edma_err_intr(void *arg)
{
 struct edma_softc *sc;
 int reg;

 sc = arg;

 reg = READ4(sc, DMA_ERR);






 WRITE1(sc, DMA_CERR, CERR_CAEI);
}
