
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_ttls_data {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int decision; int methodState; } ;


 int AVP_PAD (int *,int *) ;
 int DECISION_COND_SUCC ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int RADIUS_ATTR_USER_NAME ;
 int RADIUS_ATTR_USER_PASSWORD ;
 int * eap_get_config_identity (struct eap_sm*,size_t*) ;
 int * eap_get_config_password (struct eap_sm*,size_t*) ;
 int * eap_ttls_avp_add (int *,int *,int ,int ,int,int const*,size_t) ;
 int * eap_ttls_avp_hdr (int *,int ,int ,int,size_t) ;
 int os_memcpy (int *,int const*,size_t) ;
 int os_memset (int *,int ,size_t) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int * wpabuf_mhead (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static int eap_ttls_phase2_request_pap(struct eap_sm *sm,
           struct eap_ttls_data *data,
           struct eap_method_ret *ret,
           struct wpabuf **resp)
{
 struct wpabuf *msg;
 u8 *buf, *pos;
 size_t pad;
 const u8 *identity, *password;
 size_t identity_len, password_len;

 wpa_printf(MSG_DEBUG, "EAP-TTLS: Phase 2 PAP Request");

 identity = eap_get_config_identity(sm, &identity_len);
 password = eap_get_config_password(sm, &password_len);
 if (identity == ((void*)0) || password == ((void*)0))
  return -1;

 msg = wpabuf_alloc(identity_len + password_len + 100);
 if (msg == ((void*)0)) {
  wpa_printf(MSG_ERROR,
      "EAP-TTLS/PAP: Failed to allocate memory");
  return -1;
 }
 pos = buf = wpabuf_mhead(msg);


 pos = eap_ttls_avp_add(buf, pos, RADIUS_ATTR_USER_NAME, 0, 1,
          identity, identity_len);




 pad = password_len == 0 ? 16 : (16 - (password_len & 15)) & 15;
 pos = eap_ttls_avp_hdr(pos, RADIUS_ATTR_USER_PASSWORD, 0, 1,
          password_len + pad);
 os_memcpy(pos, password, password_len);
 pos += password_len;
 os_memset(pos, 0, pad);
 pos += pad;
 AVP_PAD(buf, pos);

 wpabuf_put(msg, pos - buf);
 *resp = msg;



 ret->methodState = METHOD_DONE;
 ret->decision = DECISION_COND_SUCC;

 return 0;
}
