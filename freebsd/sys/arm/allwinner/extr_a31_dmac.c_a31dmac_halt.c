
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a31dmac_softc {int dummy; } ;
struct a31dmac_channel {int index; struct a31dmac_softc* sc; } ;
typedef int device_t ;


 int DMA_EN_REG (int ) ;
 int DMA_WRITE (struct a31dmac_softc*,int ,int ) ;

__attribute__((used)) static void
a31dmac_halt(device_t dev, void *priv)
{
 struct a31dmac_channel *ch;
 struct a31dmac_softc *sc;

 ch = priv;
 sc = ch->sc;

 DMA_WRITE(sc, DMA_EN_REG(ch->index), 0);
}
