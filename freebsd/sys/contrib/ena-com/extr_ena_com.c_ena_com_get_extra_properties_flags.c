
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_dev {int dummy; } ;
struct ena_admin_get_feat_resp {int dummy; } ;


 int ENA_ADMIN_EXTRA_PROPERTIES_FLAGS ;
 int ena_com_get_feature (struct ena_com_dev*,struct ena_admin_get_feat_resp*,int ,int ) ;

int ena_com_get_extra_properties_flags(struct ena_com_dev *ena_dev,
           struct ena_admin_get_feat_resp *resp)
{
 return ena_com_get_feature(ena_dev, resp,
       ENA_ADMIN_EXTRA_PROPERTIES_FLAGS, 0);
}
