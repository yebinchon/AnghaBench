
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_ttls_data {int ttls_version; } ;
struct eap_sm {int dummy; } ;


 int EAP_CODE_REQUEST ;
 int EAP_TLS_FLAGS_START ;
 int EAP_TYPE_TTLS ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_ERROR ;
 int PHASE1 ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,int ) ;
 int eap_ttls_state (struct eap_ttls_data*,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_ttls_build_start(struct eap_sm *sm,
         struct eap_ttls_data *data, u8 id)
{
 struct wpabuf *req;

 req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_TTLS, 1,
       EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-TTLS: Failed to allocate memory for"
      " request");
  eap_ttls_state(data, FAILURE);
  return ((void*)0);
 }

 wpabuf_put_u8(req, EAP_TLS_FLAGS_START | data->ttls_version);

 eap_ttls_state(data, PHASE1);

 return req;
}
