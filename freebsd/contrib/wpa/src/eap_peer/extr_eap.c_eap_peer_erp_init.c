
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_erp_key {char* keyname_nai; size_t rRK_len; size_t rIK_len; int list; struct eap_erp_key* rIK; struct eap_erp_key* rRK; } ;
typedef struct eap_erp_key u8 ;
struct eap_sm {size_t eapSessionIdLen; int erp_keys; struct eap_erp_key* eapSessionId; int eap_method_priv; TYPE_1__* m; } ;
typedef int len ;
typedef int ctx ;
struct TYPE_2__ {struct eap_erp_key* (* get_emsk ) (struct eap_sm*,int ,size_t*) ;} ;


 int EAP_EMSK_NAME_LEN ;
 struct eap_erp_key EAP_ERP_CS_HMAC_SHA256_128 ;
 size_t ERP_MAX_KEY_LEN ;
 int MSG_DEBUG ;
 int WPA_PUT_BE16 (struct eap_erp_key*,size_t) ;
 int bin_clear_free (struct eap_erp_key*,int) ;
 int dl_list_add (int *,int *) ;
 int eap_erp_remove_keys_realm (struct eap_sm*,char*) ;
 char* eap_home_realm (struct eap_sm*) ;
 scalar_t__ hmac_sha256_kdf (struct eap_erp_key*,size_t,char*,struct eap_erp_key*,int,struct eap_erp_key*,size_t) ;
 int os_free (char*) ;
 int os_memcpy (char*,char*,size_t) ;
 size_t os_strlen (char*) ;
 struct eap_erp_key* os_zalloc (int) ;
 struct eap_erp_key* stub1 (struct eap_sm*,int ,size_t*) ;
 int wpa_hexdump (int ,char*,struct eap_erp_key*,int) ;
 int wpa_hexdump_key (int ,char*,struct eap_erp_key*,size_t) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_snprintf_hex (char*,size_t,struct eap_erp_key*,int) ;

void eap_peer_erp_init(struct eap_sm *sm, u8 *ext_session_id,
         size_t ext_session_id_len, u8 *ext_emsk,
         size_t ext_emsk_len)
{
}
