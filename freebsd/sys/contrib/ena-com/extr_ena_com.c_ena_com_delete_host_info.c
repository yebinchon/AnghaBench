
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_host_attribute {int * host_info; int host_info_dma_handle; int host_info_dma_addr; } ;
struct ena_com_dev {int dmadev; struct ena_host_attribute host_attr; } ;


 int ENA_MEM_FREE_COHERENT (int ,int ,int *,int ,int ) ;
 int SZ_4K ;

void ena_com_delete_host_info(struct ena_com_dev *ena_dev)
{
 struct ena_host_attribute *host_attr = &ena_dev->host_attr;

 if (host_attr->host_info) {
  ENA_MEM_FREE_COHERENT(ena_dev->dmadev,
          SZ_4K,
          host_attr->host_info,
          host_attr->host_info_dma_addr,
          host_attr->host_info_dma_handle);
  host_attr->host_info = ((void*)0);
 }
}
