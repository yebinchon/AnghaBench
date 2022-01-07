
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_vendor_test_data {scalar_t__ state; } ;
struct eap_sm {int dummy; } ;


 int EAP_CODE_REQUEST ;
 int EAP_VENDOR_ID ;
 int EAP_VENDOR_TYPE ;
 scalar_t__ INIT ;
 int MSG_ERROR ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_vendor_test_buildReq(struct eap_sm *sm, void *priv,
      u8 id)
{
 struct eap_vendor_test_data *data = priv;
 struct wpabuf *req;

 req = eap_msg_alloc(EAP_VENDOR_ID, EAP_VENDOR_TYPE, 1,
       EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-VENDOR-TEST: Failed to allocate "
      "memory for request");
  return ((void*)0);
 }

 wpabuf_put_u8(req, data->state == INIT ? 1 : 3);

 return req;
}
