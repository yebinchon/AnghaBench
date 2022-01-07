
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_tnc_data {int dummy; } ;
struct eap_sm {int dummy; } ;


 int CONTINUE ;
 int EAP_CODE_REQUEST ;
 int EAP_TNC_FLAGS_START ;
 int EAP_TNC_VERSION ;
 int EAP_TYPE_TNC ;
 int EAP_VENDOR_IETF ;
 int FAIL ;
 int MSG_ERROR ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,int ) ;
 int eap_tnc_set_state (struct eap_tnc_data*,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_tnc_build_start(struct eap_sm *sm,
        struct eap_tnc_data *data, u8 id)
{
 struct wpabuf *req;

 req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_TNC, 1, EAP_CODE_REQUEST,
       id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-TNC: Failed to allocate memory for "
      "request");
  eap_tnc_set_state(data, FAIL);
  return ((void*)0);
 }

 wpabuf_put_u8(req, EAP_TNC_FLAGS_START | EAP_TNC_VERSION);

 eap_tnc_set_state(data, CONTINUE);

 return req;
}
