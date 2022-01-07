
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_3__ {int flags; } ;


 int BUS_DMA_EXCL_BOUNCE ;

__attribute__((used)) static __inline int
exclusion_bounce(bus_dma_tag_t dmat)
{

 return (dmat->flags & BUS_DMA_EXCL_BOUNCE);
}
