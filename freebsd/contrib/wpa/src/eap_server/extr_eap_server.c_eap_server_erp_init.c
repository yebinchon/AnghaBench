
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eap_server_erp_key {char* keyname_nai; size_t rRK_len; size_t rIK_len; struct eap_server_erp_key* rIK; struct eap_server_erp_key* rRK; scalar_t__ recv_seq; } ;
typedef struct eap_server_erp_key u8 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {size_t eapSessionIdLen; struct eap_server_erp_key* eapSessionId; } ;
struct eap_sm {TYPE_2__ eap_if; int eap_method_priv; TYPE_1__* m; } ;
typedef int len ;
typedef int ctx ;
struct TYPE_3__ {struct eap_server_erp_key* (* get_emsk ) (struct eap_sm*,int ,size_t*) ;} ;


 int EAP_EMSK_NAME_LEN ;
 struct eap_server_erp_key EAP_ERP_CS_HMAC_SHA256_128 ;
 size_t ERP_MAX_KEY_LEN ;
 int MSG_DEBUG ;
 int WPA_PUT_BE16 (struct eap_server_erp_key*,size_t) ;
 int bin_clear_free (struct eap_server_erp_key*,int) ;
 scalar_t__ eap_erp_add_key (struct eap_sm*,struct eap_server_erp_key*) ;
 char* eap_get_erp_domain (struct eap_sm*) ;
 scalar_t__ hmac_sha256_kdf (struct eap_server_erp_key*,size_t,char*,struct eap_server_erp_key*,int,struct eap_server_erp_key*,size_t) ;
 int os_memcpy (char*,char const*,size_t) ;
 size_t os_strlen (char const*) ;
 struct eap_server_erp_key* os_zalloc (int) ;
 struct eap_server_erp_key* stub1 (struct eap_sm*,int ,size_t*) ;
 int wpa_hexdump (int ,char*,struct eap_server_erp_key*,int) ;
 int wpa_hexdump_key (int ,char*,struct eap_server_erp_key*,size_t) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_snprintf_hex (char*,size_t,struct eap_server_erp_key*,int) ;

__attribute__((used)) static void eap_server_erp_init(struct eap_sm *sm)
{
}
