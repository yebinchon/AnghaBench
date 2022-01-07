
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int identity_len; TYPE_1__* user; scalar_t__ const* identity; scalar_t__ require_identity_match; } ;
struct eap_gtc_data {void* state; scalar_t__ prefix; } ;
struct TYPE_2__ {size_t password_len; int * password; scalar_t__ password_hash; } ;


 int EAP_TYPE_GTC ;
 int EAP_VENDOR_IETF ;
 void* FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 void* SUCCESS ;
 scalar_t__* eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 scalar_t__ eap_user_get (struct eap_sm*,scalar_t__ const*,int,int) ;
 int os_free (scalar_t__ const*) ;
 scalar_t__ os_memcmp (scalar_t__ const*,scalar_t__ const*,int) ;
 scalar_t__ os_memcmp_const (scalar_t__ const*,int *,size_t) ;
 scalar_t__ const* os_memdup (scalar_t__ const*,int) ;
 int wpa_hexdump_ascii (int ,char*,scalar_t__ const*,int) ;
 int wpa_hexdump_ascii_key (int ,char*,scalar_t__ const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_gtc_process(struct eap_sm *sm, void *priv,
       struct wpabuf *respData)
{
 struct eap_gtc_data *data = priv;
 const u8 *pos;
 size_t rlen;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_GTC, respData, &rlen);
 if (pos == ((void*)0) || rlen < 1)
  return;

 wpa_hexdump_ascii_key(MSG_MSGDUMP, "EAP-GTC: Response", pos, rlen);
 if (sm->user == ((void*)0) || sm->user->password == ((void*)0) ||
     sm->user->password_hash) {
  wpa_printf(MSG_INFO, "EAP-GTC: Plaintext password not "
      "configured");
  data->state = FAILURE;
  return;
 }

 if (rlen != sm->user->password_len ||
     os_memcmp_const(pos, sm->user->password, rlen) != 0) {
  wpa_printf(MSG_DEBUG, "EAP-GTC: Done - Failure");
  data->state = FAILURE;
 } else {
  wpa_printf(MSG_DEBUG, "EAP-GTC: Done - Success");
  data->state = SUCCESS;
 }
}
