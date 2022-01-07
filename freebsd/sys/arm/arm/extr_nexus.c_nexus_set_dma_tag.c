
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_dma_tag_t ;


 int nexus_dma_tag ;

void
nexus_set_dma_tag(bus_dma_tag_t tag)
{

 nexus_dma_tag = tag;
}
