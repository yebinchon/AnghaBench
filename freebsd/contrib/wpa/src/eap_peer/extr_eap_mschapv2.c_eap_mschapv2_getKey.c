
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_mschapv2_data {int master_key; int success; int master_key_valid; } ;


 int MSCHAPV2_KEY_LEN ;
 int MSG_DEBUG ;
 scalar_t__ get_asymetric_start_key (int ,int *,int,int,int ) ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;

__attribute__((used)) static u8 * eap_mschapv2_getKey(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_mschapv2_data *data = priv;
 u8 *key;
 int key_len;

 if (!data->master_key_valid || !data->success)
  return ((void*)0);

 key_len = 2 * MSCHAPV2_KEY_LEN;

 key = os_malloc(key_len);
 if (key == ((void*)0))
  return ((void*)0);



 if (get_asymetric_start_key(data->master_key, key, MSCHAPV2_KEY_LEN, 1,
        0) < 0 ||
     get_asymetric_start_key(data->master_key, key + MSCHAPV2_KEY_LEN,
        MSCHAPV2_KEY_LEN, 0, 0) < 0) {
  os_free(key);
  return ((void*)0);
 }

 wpa_hexdump_key(MSG_DEBUG, "EAP-MSCHAPV2: Derived key",
   key, key_len);

 *len = key_len;
 return key;
}
