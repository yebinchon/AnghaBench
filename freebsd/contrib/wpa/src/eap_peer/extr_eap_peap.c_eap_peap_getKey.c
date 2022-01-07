
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_peap_data {int * key_data; int ipmk; int peap_version; scalar_t__ crypto_binding_used; int phase2_success; } ;
typedef int csk ;


 size_t EAP_TLS_KEY_LEN ;
 int MSG_DEBUG ;
 int forced_memzero (int *,int) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int *,size_t) ;
 scalar_t__ peap_prfplus (int ,int ,int,char*,int *,int,int *,int) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;

__attribute__((used)) static u8 * eap_peap_getKey(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_peap_data *data = priv;
 u8 *key;

 if (data->key_data == ((void*)0) || !data->phase2_success)
  return ((void*)0);

 key = os_malloc(EAP_TLS_KEY_LEN);
 if (key == ((void*)0))
  return ((void*)0);

 *len = EAP_TLS_KEY_LEN;

 if (data->crypto_binding_used) {
  u8 csk[128];





  if (peap_prfplus(data->peap_version, data->ipmk, 40,
     "Session Key Generating Function",
     (u8 *) "\00", 1, csk, sizeof(csk)) < 0) {
   os_free(key);
   return ((void*)0);
  }
  wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: CSK", csk, sizeof(csk));
  os_memcpy(key, csk, EAP_TLS_KEY_LEN);
  wpa_hexdump(MSG_DEBUG, "EAP-PEAP: Derived key",
       key, EAP_TLS_KEY_LEN);
  forced_memzero(csk, sizeof(csk));
 } else
  os_memcpy(key, data->key_data, EAP_TLS_KEY_LEN);

 return key;
}
