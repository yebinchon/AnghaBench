
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int msg_ctx; } ;


 int EAP_TYPE_NOTIFICATION ;
 int EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_EVENT_EAP_NOTIFICATION ;
 scalar_t__* eap_hdr_validate (int ,int ,struct wpabuf const*,size_t*) ;
 scalar_t__ isprint (scalar_t__ const) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int wpa_hexdump_ascii (int ,char*,scalar_t__ const*,size_t) ;
 int wpa_msg (int ,int ,char*,int ,char*) ;

__attribute__((used)) static void eap_sm_processNotify(struct eap_sm *sm, const struct wpabuf *req)
{
 const u8 *pos;
 char *msg;
 size_t i, msg_len;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_NOTIFICATION, req,
          &msg_len);
 if (pos == ((void*)0))
  return;
 wpa_hexdump_ascii(MSG_DEBUG, "EAP: EAP-Request Notification data",
     pos, msg_len);

 msg = os_malloc(msg_len + 1);
 if (msg == ((void*)0))
  return;
 for (i = 0; i < msg_len; i++)
  msg[i] = isprint(pos[i]) ? (char) pos[i] : '_';
 msg[msg_len] = '\0';
 wpa_msg(sm->msg_ctx, MSG_INFO, "%s%s",
  WPA_EVENT_EAP_NOTIFICATION, msg);
 os_free(msg);
}
