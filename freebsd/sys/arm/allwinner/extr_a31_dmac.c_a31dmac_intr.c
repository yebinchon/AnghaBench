
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef size_t u_int ;
struct a31dmac_softc {int nchans; TYPE_1__* chans; } ;
struct TYPE_2__ {int callbackarg; int (* callback ) (int ) ;} ;


 int DMA_IRQ_PEND_REG0 ;
 int DMA_IRQ_PEND_REG1 ;
 int DMA_PKG_IRQ_MASK ;
 int DMA_READ (struct a31dmac_softc*,int ) ;
 int DMA_WRITE (struct a31dmac_softc*,int ,int) ;
 int ffsll (int) ;
 int stub1 (int ) ;

__attribute__((used)) static void
a31dmac_intr(void *priv)
{
 struct a31dmac_softc *sc;
 uint32_t pend0, pend1, bit;
 uint64_t pend, mask;
 u_int index;

 sc = priv;
 pend0 = DMA_READ(sc, DMA_IRQ_PEND_REG0);
 pend1 = sc->nchans > 8 ? DMA_READ(sc, DMA_IRQ_PEND_REG1) : 0;
 if (pend0 == 0 && pend1 == 0)
  return;

 if (pend0 != 0)
  DMA_WRITE(sc, DMA_IRQ_PEND_REG0, pend0);
 if (pend1 != 0)
  DMA_WRITE(sc, DMA_IRQ_PEND_REG1, pend1);

 pend = pend0 | ((uint64_t)pend1 << 32);

 while ((bit = ffsll(pend & DMA_PKG_IRQ_MASK)) != 0) {
  mask = (1U << (bit - 1));
  pend &= ~mask;
  index = (bit - 1) / 4;

  if (index >= sc->nchans)
   continue;
  if (sc->chans[index].callback == ((void*)0))
   continue;
  sc->chans[index].callback(sc->chans[index].callbackarg);
 }
}
