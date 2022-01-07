
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ q_depth; scalar_t__ head; } ;
struct ena_com_dev {scalar_t__ reg_bar; int bus; TYPE_1__ aenq; } ;


 scalar_t__ ENA_REGS_AENQ_HEAD_DB_OFF ;
 int ENA_REG_WRITE32 (int ,scalar_t__,scalar_t__) ;
 int ENA_WARN (int,char*) ;

void ena_com_admin_aenq_enable(struct ena_com_dev *ena_dev)
{
 u16 depth = ena_dev->aenq.q_depth;

 ENA_WARN(ena_dev->aenq.head != depth, "Invalid AENQ state\n");




 ENA_REG_WRITE32(ena_dev->bus, depth, ena_dev->reg_bar + ENA_REGS_AENQ_HEAD_DB_OFF);
}
