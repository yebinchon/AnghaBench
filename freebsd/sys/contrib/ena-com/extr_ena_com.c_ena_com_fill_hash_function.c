
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
typedef int u16 ;
struct ena_rss {int hash_func; void* hash_init_val; int hash_key_dma_addr; struct ena_admin_feature_rss_flow_hash_control* hash_key; } ;
struct ena_com_dev {struct ena_rss rss; } ;
struct TYPE_3__ {int supported_func; } ;
struct TYPE_4__ {TYPE_1__ flow_hash_func; } ;
struct ena_admin_get_feat_resp {TYPE_2__ u; } ;
struct ena_admin_feature_rss_flow_hash_control {int keys_num; int key; } ;
typedef enum ena_admin_hash_functions { ____Placeholder_ena_admin_hash_functions } ena_admin_hash_functions ;



 int ENA_ADMIN_RSS_HASH_FUNCTION ;

 int ENA_COM_INVAL ;
 int ENA_COM_UNSUPPORTED ;
 int ena_com_get_feature_ex (struct ena_com_dev*,struct ena_admin_get_feat_resp*,int ,int ,int,int ) ;
 int ena_com_get_hash_function (struct ena_com_dev*,int *,int *) ;
 int ena_com_set_hash_function (struct ena_com_dev*) ;
 int ena_trc_err (char*,int,...) ;
 int memcpy (int ,int const*,int) ;
 scalar_t__ unlikely (int) ;

int ena_com_fill_hash_function(struct ena_com_dev *ena_dev,
          enum ena_admin_hash_functions func,
          const u8 *key, u16 key_len, u32 init_val)
{
 struct ena_rss *rss = &ena_dev->rss;
 struct ena_admin_get_feat_resp get_resp;
 struct ena_admin_feature_rss_flow_hash_control *hash_key =
  rss->hash_key;
 int rc;


 if (unlikely(key_len & 0x3))
  return ENA_COM_INVAL;

 rc = ena_com_get_feature_ex(ena_dev, &get_resp,
        ENA_ADMIN_RSS_HASH_FUNCTION,
        rss->hash_key_dma_addr,
        sizeof(*rss->hash_key), 0);
 if (unlikely(rc))
  return rc;

 if (!((1 << func) & get_resp.u.flow_hash_func.supported_func)) {
  ena_trc_err("Flow hash function %d isn't supported\n", func);
  return ENA_COM_UNSUPPORTED;
 }

 switch (func) {
 case 128:
  if (key_len > sizeof(hash_key->key)) {
   ena_trc_err("key len (%hu) is bigger than the max supported (%zu)\n",
        key_len, sizeof(hash_key->key));
   return ENA_COM_INVAL;
  }

  memcpy(hash_key->key, key, key_len);
  rss->hash_init_val = init_val;
  hash_key->keys_num = key_len >> 2;
  break;
 case 129:
  rss->hash_init_val = init_val;
  break;
 default:
  ena_trc_err("Invalid hash function (%d)\n", func);
  return ENA_COM_INVAL;
 }

 rss->hash_func = func;
 rc = ena_com_set_hash_function(ena_dev);


 if (unlikely(rc))
  ena_com_get_hash_function(ena_dev, ((void*)0), ((void*)0));

 return rc;
}
