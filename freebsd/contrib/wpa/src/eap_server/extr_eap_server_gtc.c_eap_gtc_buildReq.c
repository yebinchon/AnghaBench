
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_gtc_data {int state; scalar_t__ prefix; } ;


 int CONTINUE ;
 int EAP_CODE_REQUEST ;
 int EAP_TYPE_GTC ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_ERROR ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,int ) ;
 size_t os_strlen (char*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_data (struct wpabuf*,char*,size_t) ;

__attribute__((used)) static struct wpabuf * eap_gtc_buildReq(struct eap_sm *sm, void *priv, u8 id)
{
 struct eap_gtc_data *data = priv;
 struct wpabuf *req;
 char *msg;
 size_t msg_len;

 msg = data->prefix ? "CHALLENGE=Password" : "Password";

 msg_len = os_strlen(msg);
 req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_GTC, msg_len,
       EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-GTC: Failed to allocate memory for "
      "request");
  data->state = FAILURE;
  return ((void*)0);
 }

 wpabuf_put_data(req, msg, msg_len);

 data->state = CONTINUE;

 return req;
}
