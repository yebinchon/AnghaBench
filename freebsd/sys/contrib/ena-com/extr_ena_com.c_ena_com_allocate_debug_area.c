
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ena_host_attribute {scalar_t__ debug_area_size; int debug_area_virt_addr; int debug_area_dma_handle; int debug_area_dma_addr; } ;
struct ena_com_dev {int dmadev; struct ena_host_attribute host_attr; } ;


 int ENA_COM_NO_MEM ;
 int ENA_MEM_ALLOC_COHERENT (int ,scalar_t__,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

int ena_com_allocate_debug_area(struct ena_com_dev *ena_dev,
    u32 debug_area_size)
{
 struct ena_host_attribute *host_attr = &ena_dev->host_attr;

 ENA_MEM_ALLOC_COHERENT(ena_dev->dmadev,
          debug_area_size,
          host_attr->debug_area_virt_addr,
          host_attr->debug_area_dma_addr,
          host_attr->debug_area_dma_handle);
 if (unlikely(!host_attr->debug_area_virt_addr)) {
  host_attr->debug_area_size = 0;
  return ENA_COM_NO_MEM;
 }

 host_attr->debug_area_size = debug_area_size;

 return 0;
}
