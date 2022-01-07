
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct a31dmac_channel {int physaddr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



__attribute__((used)) static void
a31dmac_dmamap_cb(void *priv, bus_dma_segment_t *segs, int nsegs, int error)
{
 struct a31dmac_channel *ch;

 if (error != 0)
  return;

 ch = priv;
 ch->physaddr = segs[0].ds_addr;
}
