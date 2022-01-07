
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct sdma_softc {struct sdma_channel* channel; } ;
struct sdma_channel {scalar_t__ bd; scalar_t__ in_use; } ;


 int PAGE_SIZE ;
 int kmem_free (int ,int ) ;
 struct sdma_softc* sdma_sc ;

int
sdma_free(int chn)
{
 struct sdma_channel *channel;
 struct sdma_softc *sc;

 sc = sdma_sc;

 channel = &sc->channel[chn];
 channel->in_use = 0;

 kmem_free((vm_offset_t)channel->bd, PAGE_SIZE);

 return (0);
}
