
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_host_attribute {int * debug_area_virt_addr; int debug_area_dma_handle; int debug_area_dma_addr; int debug_area_size; } ;
struct ena_com_dev {int dmadev; struct ena_host_attribute host_attr; } ;


 int ENA_MEM_FREE_COHERENT (int ,int ,int *,int ,int ) ;

void ena_com_delete_debug_area(struct ena_com_dev *ena_dev)
{
 struct ena_host_attribute *host_attr = &ena_dev->host_attr;

 if (host_attr->debug_area_virt_addr) {
  ENA_MEM_FREE_COHERENT(ena_dev->dmadev,
          host_attr->debug_area_size,
          host_attr->debug_area_virt_addr,
          host_attr->debug_area_dma_addr,
          host_attr->debug_area_dma_handle);
  host_attr->debug_area_virt_addr = ((void*)0);
 }
}
