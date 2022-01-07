
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_softc {int dummy; } ;
struct edma_channel {int enabled; int ih_user; int (* ih ) (int ,int) ;} ;


 int CINT_CAIR ;
 int DMA_CINT ;
 int DMA_INT ;
 int EDMA_NUM_CHANNELS ;
 int READ4 (struct edma_softc*,int ) ;
 int WRITE1 (struct edma_softc*,int ,int ) ;
 struct edma_channel* edma_map ;
 int stub1 (int ,int) ;

__attribute__((used)) static void
edma_transfer_complete_intr(void *arg)
{
 struct edma_channel *ch;
 struct edma_softc *sc;
 int interrupts;
 int i;

 sc = arg;

 interrupts = READ4(sc, DMA_INT);
 WRITE1(sc, DMA_CINT, CINT_CAIR);

 for (i = 0; i < EDMA_NUM_CHANNELS; i++) {
  if (interrupts & (0x1 << i)) {
   ch = &edma_map[i];
   if (ch->enabled == 1) {
    if (ch->ih != ((void*)0)) {
     ch->ih(ch->ih_user, i);
    }
   }
  }
 }
}
