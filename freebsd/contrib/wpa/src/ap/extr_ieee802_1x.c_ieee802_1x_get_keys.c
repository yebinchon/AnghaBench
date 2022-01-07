
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {struct eapol_state_machine* eapol_sm; } ;
struct radius_msg {int dummy; } ;
struct radius_ms_mppe_keys {size_t send_len; size_t recv_len; struct radius_ms_mppe_keys* recv; struct radius_ms_mppe_keys* send; } ;
struct hostapd_data {int dummy; } ;
struct eapol_state_machine {TYPE_1__* eap_if; } ;
struct TYPE_2__ {size_t aaaEapKeyDataLen; size_t eapSessionIdLen; struct radius_ms_mppe_keys* eapSessionId; int aaaEapKeyAvailable; struct radius_ms_mppe_keys* aaaEapKeyData; } ;


 int MSG_DEBUG ;
 int RADIUS_ATTR_EAP_KEY_NAME ;
 int TRUE ;
 int os_free (struct radius_ms_mppe_keys*) ;
 struct radius_ms_mppe_keys* os_malloc (size_t) ;
 int os_memcpy (struct radius_ms_mppe_keys*,struct radius_ms_mppe_keys*,size_t) ;
 struct radius_ms_mppe_keys* os_memdup (int *,size_t) ;
 scalar_t__ radius_msg_get_attr_ptr (struct radius_msg*,int ,int **,size_t*,int *) ;
 struct radius_ms_mppe_keys* radius_msg_get_ms_keys (struct radius_msg*,struct radius_msg*,int const*,size_t) ;
 int wpa_hexdump (int ,char*,struct radius_ms_mppe_keys*,size_t) ;
 int wpa_hexdump_key (int ,char*,struct radius_ms_mppe_keys*,size_t) ;
 int wpa_printf (int ,char*,struct radius_ms_mppe_keys*,struct radius_ms_mppe_keys*,struct radius_ms_mppe_keys*) ;

__attribute__((used)) static void ieee802_1x_get_keys(struct hostapd_data *hapd,
    struct sta_info *sta, struct radius_msg *msg,
    struct radius_msg *req,
    const u8 *shared_secret,
    size_t shared_secret_len)
{
 struct radius_ms_mppe_keys *keys;
 u8 *buf;
 size_t len;
 struct eapol_state_machine *sm = sta->eapol_sm;
 if (sm == ((void*)0))
  return;

 keys = radius_msg_get_ms_keys(msg, req, shared_secret,
          shared_secret_len);

 if (keys && keys->send && keys->recv) {
  len = keys->send_len + keys->recv_len;
  wpa_hexdump_key(MSG_DEBUG, "MS-MPPE-Send-Key",
    keys->send, keys->send_len);
  wpa_hexdump_key(MSG_DEBUG, "MS-MPPE-Recv-Key",
    keys->recv, keys->recv_len);

  os_free(sm->eap_if->aaaEapKeyData);
  sm->eap_if->aaaEapKeyData = os_malloc(len);
  if (sm->eap_if->aaaEapKeyData) {
   os_memcpy(sm->eap_if->aaaEapKeyData, keys->recv,
      keys->recv_len);
   os_memcpy(sm->eap_if->aaaEapKeyData + keys->recv_len,
      keys->send, keys->send_len);
   sm->eap_if->aaaEapKeyDataLen = len;
   sm->eap_if->aaaEapKeyAvailable = TRUE;
  }
 } else {
  wpa_printf(MSG_DEBUG,
      "MS-MPPE: 1x_get_keys, could not get keys: %p  send: %p  recv: %p",
      keys, keys ? keys->send : ((void*)0),
      keys ? keys->recv : ((void*)0));
 }

 if (keys) {
  os_free(keys->send);
  os_free(keys->recv);
  os_free(keys);
 }

 if (radius_msg_get_attr_ptr(msg, RADIUS_ATTR_EAP_KEY_NAME, &buf, &len,
        ((void*)0)) == 0) {
  os_free(sm->eap_if->eapSessionId);
  sm->eap_if->eapSessionId = os_memdup(buf, len);
  if (sm->eap_if->eapSessionId) {
   sm->eap_if->eapSessionIdLen = len;
   wpa_hexdump(MSG_DEBUG, "EAP-Key Name",
        sm->eap_if->eapSessionId,
        sm->eap_if->eapSessionIdLen);
  }
 } else {
  sm->eap_if->eapSessionIdLen = 0;
 }
}
