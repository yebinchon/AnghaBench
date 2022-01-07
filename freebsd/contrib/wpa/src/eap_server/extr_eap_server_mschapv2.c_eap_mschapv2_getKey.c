
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_mschapv2_data {scalar_t__ state; int master_key; int master_key_valid; } ;


 int MSCHAPV2_KEY_LEN ;
 int MSG_DEBUG ;
 scalar_t__ SUCCESS ;
 scalar_t__ get_asymetric_start_key (int ,int *,int,int,int) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int wpa_hexdump_key (int ,char*,int *,size_t) ;

__attribute__((used)) static u8 * eap_mschapv2_getKey(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_mschapv2_data *data = priv;
 u8 *key;

 if (data->state != SUCCESS || !data->master_key_valid)
  return ((void*)0);

 *len = 2 * MSCHAPV2_KEY_LEN;
 key = os_malloc(*len);
 if (key == ((void*)0))
  return ((void*)0);

 if (get_asymetric_start_key(data->master_key, key, MSCHAPV2_KEY_LEN, 0,
        1) < 0 ||
     get_asymetric_start_key(data->master_key, key + MSCHAPV2_KEY_LEN,
        MSCHAPV2_KEY_LEN, 1, 1) < 0) {
  os_free(key);
  return ((void*)0);
 }
 wpa_hexdump_key(MSG_DEBUG, "EAP-MSCHAPV2: Derived key", key, *len);

 return key;
}
