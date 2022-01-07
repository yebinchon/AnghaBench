
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int eapol_ctx; TYPE_1__* eapol_cb; } ;
struct eap_identity_data {int state; } ;
struct TYPE_2__ {char* (* get_eap_req_id_text ) (int ,size_t*) ;} ;


 int EAP_CODE_REQUEST ;
 int EAP_TYPE_IDENTITY ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_ERROR ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,int ) ;
 char* stub1 (int ,size_t*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_data (struct wpabuf*,char const*,size_t) ;

__attribute__((used)) static struct wpabuf * eap_identity_buildReq(struct eap_sm *sm, void *priv,
          u8 id)
{
 struct eap_identity_data *data = priv;
 struct wpabuf *req;
 const char *req_data;
 size_t req_data_len;

 if (sm->eapol_cb->get_eap_req_id_text) {
  req_data = sm->eapol_cb->get_eap_req_id_text(sm->eapol_ctx,
            &req_data_len);
 } else {
  req_data = ((void*)0);
  req_data_len = 0;
 }
 req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_IDENTITY, req_data_len,
       EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-Identity: Failed to allocate "
      "memory for request");
  data->state = FAILURE;
  return ((void*)0);
 }

 wpabuf_put_data(req, req_data, req_data_len);

 return req;
}
