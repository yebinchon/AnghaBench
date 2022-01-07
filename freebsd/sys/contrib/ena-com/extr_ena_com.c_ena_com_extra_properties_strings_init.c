
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ena_extra_properties_strings {int size; int dma_addr; int virt_addr; int dma_handle; } ;
struct ena_com_dev {int dmadev; struct ena_extra_properties_strings extra_properties_strings; } ;
struct TYPE_3__ {int count; } ;
struct TYPE_4__ {TYPE_1__ extra_properties_strings; } ;
struct ena_admin_get_feat_resp {TYPE_2__ u; } ;


 int ENA_ADMIN_EXTRA_PROPERTIES_COUNT ;
 int ENA_ADMIN_EXTRA_PROPERTIES_STRINGS ;
 int ENA_ADMIN_EXTRA_PROPERTIES_STRING_LEN ;
 int ENA_MEM_ALLOC_COHERENT (int ,int,int ,int ,int ) ;
 int ena_com_delete_extra_properties_strings (struct ena_com_dev*) ;
 scalar_t__ ena_com_get_feature_ex (struct ena_com_dev*,struct ena_admin_get_feat_resp*,int ,int ,int,int ) ;
 int ena_trc_dbg (char*) ;
 int ena_trc_err (char*) ;
 scalar_t__ unlikely (int) ;

int ena_com_extra_properties_strings_init(struct ena_com_dev *ena_dev)
{
 struct ena_admin_get_feat_resp resp;
 struct ena_extra_properties_strings *extra_properties_strings =
   &ena_dev->extra_properties_strings;
 u32 rc;
 extra_properties_strings->size = ENA_ADMIN_EXTRA_PROPERTIES_COUNT *
  ENA_ADMIN_EXTRA_PROPERTIES_STRING_LEN;

 ENA_MEM_ALLOC_COHERENT(ena_dev->dmadev,
          extra_properties_strings->size,
          extra_properties_strings->virt_addr,
          extra_properties_strings->dma_addr,
          extra_properties_strings->dma_handle);
 if (unlikely(!extra_properties_strings->virt_addr)) {
  ena_trc_err("Failed to allocate extra properties strings\n");
  return 0;
 }

 rc = ena_com_get_feature_ex(ena_dev, &resp,
        ENA_ADMIN_EXTRA_PROPERTIES_STRINGS,
        extra_properties_strings->dma_addr,
        extra_properties_strings->size, 0);
 if (rc) {
  ena_trc_dbg("Failed to get extra properties strings\n");
  goto err;
 }

 return resp.u.extra_properties_strings.count;
err:
 ena_com_delete_extra_properties_strings(ena_dev);
 return 0;
}
