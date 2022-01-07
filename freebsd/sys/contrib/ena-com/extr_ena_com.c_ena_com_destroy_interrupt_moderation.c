
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_dev {int * intr_moder_tbl; int dmadev; } ;


 int ENA_MEM_FREE (int ,int *) ;

void ena_com_destroy_interrupt_moderation(struct ena_com_dev *ena_dev)
{
 if (ena_dev->intr_moder_tbl)
  ENA_MEM_FREE(ena_dev->dmadev, ena_dev->intr_moder_tbl);
 ena_dev->intr_moder_tbl = ((void*)0);
}
