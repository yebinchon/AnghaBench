
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_extra_properties_strings {int * virt_addr; int dma_handle; int dma_addr; int size; } ;
struct ena_com_dev {int dmadev; struct ena_extra_properties_strings extra_properties_strings; } ;


 int ENA_MEM_FREE_COHERENT (int ,int ,int *,int ,int ) ;

void ena_com_delete_extra_properties_strings(struct ena_com_dev *ena_dev)
{
 struct ena_extra_properties_strings *extra_properties_strings =
    &ena_dev->extra_properties_strings;

 if (extra_properties_strings->virt_addr) {
  ENA_MEM_FREE_COHERENT(ena_dev->dmadev,
          extra_properties_strings->size,
          extra_properties_strings->virt_addr,
          extra_properties_strings->dma_addr,
          extra_properties_strings->dma_handle);
  extra_properties_strings->virt_addr = ((void*)0);
 }
}
