
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int server_id_len; int * server_id; TYPE_2__* user; } ;
struct eap_psk_hdr_2 {int * mac_p; int * rand_p; } ;
struct eap_psk_data {scalar_t__ state; size_t id_p_len; int ak; int * rand_p; int * rand_s; int * id_p; int kdk; } ;
struct TYPE_4__ {scalar_t__ password_len; int * password; TYPE_1__* methods; } ;
struct TYPE_3__ {scalar_t__ vendor; scalar_t__ method; } ;


 int EAP_MAX_METHODS ;
 int EAP_PSK_AK_LEN ;
 int EAP_PSK_KDK_LEN ;
 int EAP_PSK_MAC_LEN ;
 scalar_t__ EAP_PSK_PSK_LEN ;
 int EAP_PSK_RAND_LEN ;
 scalar_t__ EAP_TYPE_NONE ;
 scalar_t__ EAP_TYPE_PSK ;
 scalar_t__ EAP_VENDOR_IETF ;
 void* FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 scalar_t__ PSK_1 ;
 scalar_t__ PSK_3 ;
 int * eap_hdr_validate (scalar_t__,scalar_t__,struct wpabuf*,size_t*) ;
 scalar_t__ eap_psk_key_setup (int *,int ,int ) ;
 scalar_t__ eap_user_get (struct eap_sm*,int *,size_t,int ) ;
 scalar_t__ omac1_aes_128 (int ,int *,size_t,int *) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 scalar_t__ os_memcmp_const (int *,int *,int) ;
 int os_memcpy (int *,int *,int) ;
 int * os_memdup (int const*,size_t) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_hexdump_ascii (int ,char*,int *,size_t) ;
 int wpa_hexdump_key (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_psk_process_2(struct eap_sm *sm,
         struct eap_psk_data *data,
         struct wpabuf *respData)
{
 const struct eap_psk_hdr_2 *resp;
 u8 *pos, mac[EAP_PSK_MAC_LEN], *buf;
 size_t left, buflen;
 int i;
 const u8 *cpos;

 if (data->state != PSK_1)
  return;

 wpa_printf(MSG_DEBUG, "EAP-PSK: Received PSK-2");

 cpos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_PSK, respData,
    &left);
 if (cpos == ((void*)0) || left < sizeof(*resp)) {
  wpa_printf(MSG_INFO, "EAP-PSK: Invalid frame");
  return;
 }
 resp = (const struct eap_psk_hdr_2 *) cpos;
 cpos = (const u8 *) (resp + 1);
 left -= sizeof(*resp);

 os_free(data->id_p);
 data->id_p = os_memdup(cpos, left);
 if (data->id_p == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-PSK: Failed to allocate memory for "
      "ID_P");
  return;
 }
 data->id_p_len = left;
 wpa_hexdump_ascii(MSG_MSGDUMP, "EAP-PSK: ID_P",
     data->id_p, data->id_p_len);

 if (eap_user_get(sm, data->id_p, data->id_p_len, 0) < 0) {
  wpa_hexdump_ascii(MSG_DEBUG, "EAP-PSK: unknown ID_P",
      data->id_p, data->id_p_len);
  data->state = FAILURE;
  return;
 }

 for (i = 0;
      i < EAP_MAX_METHODS &&
       (sm->user->methods[i].vendor != EAP_VENDOR_IETF ||
        sm->user->methods[i].method != EAP_TYPE_NONE);
      i++) {
  if (sm->user->methods[i].vendor == EAP_VENDOR_IETF &&
      sm->user->methods[i].method == EAP_TYPE_PSK)
   break;
 }

 if (i >= EAP_MAX_METHODS ||
     sm->user->methods[i].vendor != EAP_VENDOR_IETF ||
     sm->user->methods[i].method != EAP_TYPE_PSK) {
  wpa_hexdump_ascii(MSG_DEBUG,
      "EAP-PSK: EAP-PSK not enabled for ID_P",
      data->id_p, data->id_p_len);
  data->state = FAILURE;
  return;
 }

 if (sm->user->password == ((void*)0) ||
     sm->user->password_len != EAP_PSK_PSK_LEN) {
  wpa_hexdump_ascii(MSG_DEBUG, "EAP-PSK: invalid password in "
      "user database for ID_P",
      data->id_p, data->id_p_len);
  data->state = FAILURE;
  return;
 }
 if (eap_psk_key_setup(sm->user->password, data->ak, data->kdk)) {
  data->state = FAILURE;
  return;
 }
 wpa_hexdump_key(MSG_DEBUG, "EAP-PSK: AK", data->ak, EAP_PSK_AK_LEN);
 wpa_hexdump_key(MSG_DEBUG, "EAP-PSK: KDK", data->kdk, EAP_PSK_KDK_LEN);

 wpa_hexdump(MSG_MSGDUMP, "EAP-PSK: RAND_P (client rand)",
      resp->rand_p, EAP_PSK_RAND_LEN);
 os_memcpy(data->rand_p, resp->rand_p, EAP_PSK_RAND_LEN);


 buflen = data->id_p_len + sm->server_id_len + 2 * EAP_PSK_RAND_LEN;
 buf = os_malloc(buflen);
 if (buf == ((void*)0)) {
  data->state = FAILURE;
  return;
 }
 os_memcpy(buf, data->id_p, data->id_p_len);
 pos = buf + data->id_p_len;
 os_memcpy(pos, sm->server_id, sm->server_id_len);
 pos += sm->server_id_len;
 os_memcpy(pos, data->rand_s, EAP_PSK_RAND_LEN);
 pos += EAP_PSK_RAND_LEN;
 os_memcpy(pos, data->rand_p, EAP_PSK_RAND_LEN);
 if (omac1_aes_128(data->ak, buf, buflen, mac)) {
  os_free(buf);
  data->state = FAILURE;
  return;
 }
 os_free(buf);
 wpa_hexdump(MSG_DEBUG, "EAP-PSK: MAC_P", resp->mac_p, EAP_PSK_MAC_LEN);
 if (os_memcmp_const(mac, resp->mac_p, EAP_PSK_MAC_LEN) != 0) {
  wpa_printf(MSG_INFO, "EAP-PSK: Invalid MAC_P");
  wpa_hexdump(MSG_MSGDUMP, "EAP-PSK: Expected MAC_P",
       mac, EAP_PSK_MAC_LEN);
  data->state = FAILURE;
  return;
 }

 data->state = PSK_3;
}
