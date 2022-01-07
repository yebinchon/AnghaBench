
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_intr_moder_entry {int bytes_per_interval; int pkts_per_interval; int intr_moder_interval; } ;
struct ena_com_dev {struct ena_intr_moder_entry* intr_moder_tbl; } ;


 int ENA_INTR_HIGHEST_BYTES ;
 int ENA_INTR_HIGHEST_PKTS ;
 int ENA_INTR_HIGHEST_USECS ;
 int ENA_INTR_HIGH_BYTES ;
 int ENA_INTR_HIGH_PKTS ;
 int ENA_INTR_HIGH_USECS ;
 int ENA_INTR_LOWEST_BYTES ;
 int ENA_INTR_LOWEST_PKTS ;
 int ENA_INTR_LOWEST_USECS ;
 int ENA_INTR_LOW_BYTES ;
 int ENA_INTR_LOW_PKTS ;
 int ENA_INTR_LOW_USECS ;
 int ENA_INTR_MID_BYTES ;
 int ENA_INTR_MID_PKTS ;
 int ENA_INTR_MID_USECS ;
 size_t ENA_INTR_MODER_HIGH ;
 size_t ENA_INTR_MODER_HIGHEST ;
 size_t ENA_INTR_MODER_LOW ;
 size_t ENA_INTR_MODER_LOWEST ;
 size_t ENA_INTR_MODER_MID ;

void ena_com_config_default_interrupt_moderation_table(struct ena_com_dev *ena_dev)
{
 struct ena_intr_moder_entry *intr_moder_tbl = ena_dev->intr_moder_tbl;

 if (!intr_moder_tbl)
  return;

 intr_moder_tbl[ENA_INTR_MODER_LOWEST].intr_moder_interval =
  ENA_INTR_LOWEST_USECS;
 intr_moder_tbl[ENA_INTR_MODER_LOWEST].pkts_per_interval =
  ENA_INTR_LOWEST_PKTS;
 intr_moder_tbl[ENA_INTR_MODER_LOWEST].bytes_per_interval =
  ENA_INTR_LOWEST_BYTES;

 intr_moder_tbl[ENA_INTR_MODER_LOW].intr_moder_interval =
  ENA_INTR_LOW_USECS;
 intr_moder_tbl[ENA_INTR_MODER_LOW].pkts_per_interval =
  ENA_INTR_LOW_PKTS;
 intr_moder_tbl[ENA_INTR_MODER_LOW].bytes_per_interval =
  ENA_INTR_LOW_BYTES;

 intr_moder_tbl[ENA_INTR_MODER_MID].intr_moder_interval =
  ENA_INTR_MID_USECS;
 intr_moder_tbl[ENA_INTR_MODER_MID].pkts_per_interval =
  ENA_INTR_MID_PKTS;
 intr_moder_tbl[ENA_INTR_MODER_MID].bytes_per_interval =
  ENA_INTR_MID_BYTES;

 intr_moder_tbl[ENA_INTR_MODER_HIGH].intr_moder_interval =
  ENA_INTR_HIGH_USECS;
 intr_moder_tbl[ENA_INTR_MODER_HIGH].pkts_per_interval =
  ENA_INTR_HIGH_PKTS;
 intr_moder_tbl[ENA_INTR_MODER_HIGH].bytes_per_interval =
  ENA_INTR_HIGH_BYTES;

 intr_moder_tbl[ENA_INTR_MODER_HIGHEST].intr_moder_interval =
  ENA_INTR_HIGHEST_USECS;
 intr_moder_tbl[ENA_INTR_MODER_HIGHEST].pkts_per_interval =
  ENA_INTR_HIGHEST_PKTS;
 intr_moder_tbl[ENA_INTR_MODER_HIGHEST].bytes_per_interval =
  ENA_INTR_HIGHEST_BYTES;
}
