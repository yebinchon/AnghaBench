
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bus_dma_tag_t ;
typedef int bus_addr_t ;
struct TYPE_3__ {int alignment; } ;



__attribute__((used)) static __inline int
alignment_bounce(bus_dma_tag_t dmat, bus_addr_t addr)
{

 return (addr & (dmat->alignment - 1));
}
