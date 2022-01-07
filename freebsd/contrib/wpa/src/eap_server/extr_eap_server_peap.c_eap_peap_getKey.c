
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_peap_data {scalar_t__ state; int ssl; int ipmk; int peap_version; scalar_t__ crypto_binding_used; } ;
typedef int csk ;


 scalar_t__ EAP_EMSK_LEN ;
 size_t EAP_TLS_KEY_LEN ;
 int MSG_DEBUG ;
 scalar_t__ SUCCESS ;
 int * eap_server_tls_derive_key (struct eap_sm*,int *,char*,int *,int ,scalar_t__) ;
 int forced_memzero (int *,int) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int *,size_t) ;
 int os_memset (int *,int ,scalar_t__) ;
 scalar_t__ peap_prfplus (int ,int ,int,char*,int *,int,int *,int) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static u8 * eap_peap_getKey(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_peap_data *data = priv;
 u8 *eapKeyData;

 if (data->state != SUCCESS)
  return ((void*)0);

 if (data->crypto_binding_used) {
  u8 csk[128];





  if (peap_prfplus(data->peap_version, data->ipmk, 40,
     "Session Key Generating Function",
     (u8 *) "\00", 1, csk, sizeof(csk)) < 0)
   return ((void*)0);
  wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: CSK", csk, sizeof(csk));
  eapKeyData = os_malloc(EAP_TLS_KEY_LEN);
  if (eapKeyData) {
   os_memcpy(eapKeyData, csk, EAP_TLS_KEY_LEN);
   *len = EAP_TLS_KEY_LEN;
   wpa_hexdump(MSG_DEBUG, "EAP-PEAP: Derived key",
        eapKeyData, EAP_TLS_KEY_LEN);
  } else {
   wpa_printf(MSG_DEBUG, "EAP-PEAP: Failed to derive "
       "key");
  }

  forced_memzero(csk, sizeof(csk));

  return eapKeyData;
 }


 eapKeyData = eap_server_tls_derive_key(sm, &data->ssl,
            "client EAP encryption", ((void*)0), 0,
            EAP_TLS_KEY_LEN + EAP_EMSK_LEN);
 if (eapKeyData) {
  os_memset(eapKeyData + EAP_TLS_KEY_LEN, 0, EAP_EMSK_LEN);
  *len = EAP_TLS_KEY_LEN;
  wpa_hexdump(MSG_DEBUG, "EAP-PEAP: Derived key",
       eapKeyData, EAP_TLS_KEY_LEN);
 } else {
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Failed to derive key");
 }

 return eapKeyData;
}
