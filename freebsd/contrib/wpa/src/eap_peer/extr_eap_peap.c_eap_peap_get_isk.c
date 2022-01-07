
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_peap_data {int * phase2_priv; TYPE_1__* phase2_method; } ;
struct TYPE_2__ {int * (* getKey ) (struct eap_sm*,int *,size_t*) ;int (* isKeyAvailable ) (struct eap_sm*,int *) ;} ;


 int MSG_DEBUG ;
 int os_free (int *) ;
 int os_memcpy (int *,int *,size_t) ;
 int os_memset (int *,int ,size_t) ;
 int stub1 (struct eap_sm*,int *) ;
 int * stub2 (struct eap_sm*,int *,size_t*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_peap_get_isk(struct eap_sm *sm, struct eap_peap_data *data,
       u8 *isk, size_t isk_len)
{
 u8 *key;
 size_t key_len;

 os_memset(isk, 0, isk_len);
 if (data->phase2_method == ((void*)0) || data->phase2_priv == ((void*)0) ||
     data->phase2_method->isKeyAvailable == ((void*)0) ||
     data->phase2_method->getKey == ((void*)0))
  return 0;

 if (!data->phase2_method->isKeyAvailable(sm, data->phase2_priv) ||
     (key = data->phase2_method->getKey(sm, data->phase2_priv,
            &key_len)) == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Could not get key material "
      "from Phase 2");
  return -1;
 }

 if (key_len > isk_len)
  key_len = isk_len;
 os_memcpy(isk, key, key_len);
 os_free(key);

 return 0;
}
