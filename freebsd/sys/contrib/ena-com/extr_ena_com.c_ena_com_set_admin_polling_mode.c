
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int polling; } ;
struct ena_com_dev {TYPE_1__ admin_queue; scalar_t__ reg_bar; int bus; } ;


 int ENA_REGS_ADMIN_INTR_MASK ;
 scalar_t__ ENA_REGS_INTR_MASK_OFF ;
 int ENA_REG_WRITE32 (int ,int ,scalar_t__) ;

void ena_com_set_admin_polling_mode(struct ena_com_dev *ena_dev, bool polling)
{
 u32 mask_value = 0;

 if (polling)
  mask_value = ENA_REGS_ADMIN_INTR_MASK;

 ENA_REG_WRITE32(ena_dev->bus, mask_value,
   ena_dev->reg_bar + ENA_REGS_INTR_MASK_OFF);
 ena_dev->admin_queue.polling = polling;
}
