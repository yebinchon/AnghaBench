
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_intr_moder_entry {int dummy; } ;
struct ena_com_dev {int intr_moder_tbl; int dmadev; } ;


 int ENA_COM_NO_MEM ;
 int ENA_INTR_MAX_NUM_OF_LEVELS ;
 int ENA_MEM_ALLOC (int ,size_t) ;
 int ena_com_config_default_interrupt_moderation_table (struct ena_com_dev*) ;

__attribute__((used)) static int ena_com_init_interrupt_moderation_table(struct ena_com_dev *ena_dev)
{
 size_t size;

 size = sizeof(struct ena_intr_moder_entry) * ENA_INTR_MAX_NUM_OF_LEVELS;

 ena_dev->intr_moder_tbl = ENA_MEM_ALLOC(ena_dev->dmadev, size);
 if (!ena_dev->intr_moder_tbl)
  return ENA_COM_NO_MEM;

 ena_com_config_default_interrupt_moderation_table(ena_dev);

 return 0;
}
