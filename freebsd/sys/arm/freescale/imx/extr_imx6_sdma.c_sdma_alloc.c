
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_softc {struct sdma_channel* channel; } ;
struct sdma_channel {int in_use; void* bd; } ;


 int M_ZERO ;
 int PAGE_SIZE ;
 int SDMA_N_CHANNELS ;
 int VM_MEMATTR_UNCACHEABLE ;
 scalar_t__ kmem_alloc_contig (int ,int ,int ,int ,int ,int ,int ) ;
 struct sdma_softc* sdma_sc ;

int
sdma_alloc(void)
{
 struct sdma_channel *channel;
 struct sdma_softc *sc;
 int found;
 int chn;
 int i;

 sc = sdma_sc;
 found = 0;


 for (i = 1; i < SDMA_N_CHANNELS; i++) {
  channel = &sc->channel[i];
  if (channel->in_use == 0) {
   channel->in_use = 1;
   found = 1;
   break;
  }
 }

 if (!found)
  return (-1);

 chn = i;


 channel->bd = (void *)kmem_alloc_contig(PAGE_SIZE, M_ZERO, 0, ~0,
     PAGE_SIZE, 0, VM_MEMATTR_UNCACHEABLE);

 return (chn);
}
