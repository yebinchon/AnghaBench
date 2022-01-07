
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_eke_session {int auth_len; int ka; int prf; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int eap_eke_prf (int ,int ,int ,int const*,int ,int ,int ,int *) ;
 int os_strlen (char const*) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf const*) ;
 int wpa_hexdump_key (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,char const*) ;
 int wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

int eap_eke_auth(struct eap_eke_session *sess, const char *label,
   const struct wpabuf *msgs, u8 *auth)
{
 wpa_printf(MSG_DEBUG, "EAP-EKE: Auth(%s)", label);
 wpa_hexdump_key(MSG_DEBUG, "EAP-EKE: Ka for Auth",
   sess->ka, sess->auth_len);
 wpa_hexdump_buf(MSG_MSGDUMP, "EAP-EKE: Messages for Auth", msgs);
 return eap_eke_prf(sess->prf, sess->ka, sess->auth_len,
      (const u8 *) label, os_strlen(label),
      wpabuf_head(msgs), wpabuf_len(msgs), auth);
}
