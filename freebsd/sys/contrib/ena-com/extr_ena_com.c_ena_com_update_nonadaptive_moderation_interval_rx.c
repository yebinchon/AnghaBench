
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ena_com_dev {int intr_delay_resolution; TYPE_1__* intr_moder_tbl; } ;
struct TYPE_2__ {int intr_moder_interval; } ;


 int ENA_COM_FAULT ;
 size_t ENA_INTR_MODER_LOWEST ;
 int ena_trc_err (char*) ;

int ena_com_update_nonadaptive_moderation_interval_rx(struct ena_com_dev *ena_dev,
            u32 rx_coalesce_usecs)
{
 if (!ena_dev->intr_delay_resolution) {
  ena_trc_err("Illegal interrupt delay granularity value\n");
  return ENA_COM_FAULT;
 }




 ena_dev->intr_moder_tbl[ENA_INTR_MODER_LOWEST].intr_moder_interval =
  rx_coalesce_usecs / ena_dev->intr_delay_resolution;

 return 0;
}
