
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_dev {int dummy; } ;


 int ENA_ADMIN_INTERRUPT_MODERATION ;
 int ena_com_check_supported_feature_id (struct ena_com_dev*,int ) ;

bool ena_com_interrupt_moderation_supported(struct ena_com_dev *ena_dev)
{
 return ena_com_check_supported_feature_id(ena_dev,
        ENA_ADMIN_INTERRUPT_MODERATION);
}
