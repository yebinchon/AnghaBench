
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bus_dma_tag_t ;


 int nexus_dma_tag ;

__attribute__((used)) static bus_dma_tag_t
nexus_get_dma_tag(device_t dev, device_t child)
{

 return nexus_dma_tag;
}
