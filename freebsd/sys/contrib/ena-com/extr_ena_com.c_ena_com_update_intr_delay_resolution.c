
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ena_intr_moder_entry {int intr_moder_interval; } ;
struct ena_com_dev {int intr_delay_resolution; int intr_moder_tx_interval; struct ena_intr_moder_entry* intr_moder_tbl; } ;


 unsigned int ENA_INTR_MAX_NUM_OF_LEVELS ;
 int ena_trc_err (char*) ;

__attribute__((used)) static void ena_com_update_intr_delay_resolution(struct ena_com_dev *ena_dev,
       u16 intr_delay_resolution)
{
 struct ena_intr_moder_entry *intr_moder_tbl = ena_dev->intr_moder_tbl;
 unsigned int i;

 if (!intr_delay_resolution) {
  ena_trc_err("Illegal intr_delay_resolution provided. Going to use default 1 usec resolution\n");
  intr_delay_resolution = 1;
 }
 ena_dev->intr_delay_resolution = intr_delay_resolution;


 for (i = 0; i < ENA_INTR_MAX_NUM_OF_LEVELS; i++)
  intr_moder_tbl[i].intr_moder_interval /= intr_delay_resolution;


 ena_dev->intr_moder_tx_interval /= intr_delay_resolution;
}
