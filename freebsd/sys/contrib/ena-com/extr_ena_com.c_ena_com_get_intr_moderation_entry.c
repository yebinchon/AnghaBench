
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_intr_moder_entry {int intr_moder_interval; int bytes_per_interval; int pkts_per_interval; } ;
struct ena_com_dev {int intr_delay_resolution; struct ena_intr_moder_entry* intr_moder_tbl; } ;
typedef enum ena_intr_moder_level { ____Placeholder_ena_intr_moder_level } ena_intr_moder_level ;


 int ENA_INTR_MAX_NUM_OF_LEVELS ;

void ena_com_get_intr_moderation_entry(struct ena_com_dev *ena_dev,
           enum ena_intr_moder_level level,
           struct ena_intr_moder_entry *entry)
{
 struct ena_intr_moder_entry *intr_moder_tbl = ena_dev->intr_moder_tbl;

 if (level >= ENA_INTR_MAX_NUM_OF_LEVELS)
  return;

 entry->intr_moder_interval = intr_moder_tbl[level].intr_moder_interval;
 if (ena_dev->intr_delay_resolution)
  entry->intr_moder_interval *= ena_dev->intr_delay_resolution;
 entry->pkts_per_interval =
 intr_moder_tbl[level].pkts_per_interval;
 entry->bytes_per_interval = intr_moder_tbl[level].bytes_per_interval;
}
