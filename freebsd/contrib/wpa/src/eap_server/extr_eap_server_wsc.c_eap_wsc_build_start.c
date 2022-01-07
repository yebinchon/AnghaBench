
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_wsc_data {int dummy; } ;
struct eap_sm {int dummy; } ;


 int EAP_CODE_REQUEST ;
 int EAP_VENDOR_TYPE_WSC ;
 int EAP_VENDOR_WFA ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WSC_Start ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * eap_wsc_build_start(struct eap_sm *sm,
        struct eap_wsc_data *data, u8 id)
{
 struct wpabuf *req;

 req = eap_msg_alloc(EAP_VENDOR_WFA, EAP_VENDOR_TYPE_WSC, 2,
       EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-WSC: Failed to allocate memory for "
      "request");
  return ((void*)0);
 }

 wpa_printf(MSG_DEBUG, "EAP-WSC: Send WSC/Start");
 wpabuf_put_u8(req, WSC_Start);
 wpabuf_put_u8(req, 0);

 return req;
}
