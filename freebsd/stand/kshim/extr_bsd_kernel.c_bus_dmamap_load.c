
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bus_size_t ;
typedef int bus_dmamap_t ;
typedef int (* bus_dmamap_callback_t ) (void*,TYPE_1__*,int,int ) ;
typedef int bus_dma_tag_t ;
struct TYPE_5__ {uintptr_t ds_addr; int ds_len; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int stub1 (void*,TYPE_1__*,int,int ) ;

int
bus_dmamap_load(bus_dma_tag_t dmat, bus_dmamap_t map, void *buf,
    bus_size_t buflen, bus_dmamap_callback_t *callback,
    void *callback_arg, int flags)
{
 bus_dma_segment_t segs[1];

 segs[0].ds_addr = (uintptr_t)buf;
 segs[0].ds_len = buflen;

 (*callback)(callback_arg, segs, 1, 0);

 return (0);
}
