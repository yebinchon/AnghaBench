
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_com_dev {int dummy; } ;
struct TYPE_2__ {int offload; } ;
struct ena_admin_get_feat_resp {TYPE_1__ u; } ;
struct ena_admin_feature_offload_desc {int dummy; } ;


 int ENA_ADMIN_STATELESS_OFFLOAD_CONFIG ;
 int ena_com_get_feature (struct ena_com_dev*,struct ena_admin_get_feat_resp*,int ,int ) ;
 int ena_trc_err (char*,int) ;
 int memcpy (struct ena_admin_feature_offload_desc*,int *,int) ;
 scalar_t__ unlikely (int) ;

int ena_com_get_offload_settings(struct ena_com_dev *ena_dev,
     struct ena_admin_feature_offload_desc *offload)
{
 int ret;
 struct ena_admin_get_feat_resp resp;

 ret = ena_com_get_feature(ena_dev, &resp,
      ENA_ADMIN_STATELESS_OFFLOAD_CONFIG, 0);
 if (unlikely(ret)) {
  ena_trc_err("Failed to get offload capabilities %d\n", ret);
  return ret;
 }

 memcpy(offload, &resp.u.offload, sizeof(resp.u.offload));

 return 0;
}
