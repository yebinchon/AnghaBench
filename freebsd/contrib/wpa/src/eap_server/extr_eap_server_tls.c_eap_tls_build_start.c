
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_tls_data {int eap_type; } ;
struct eap_sm {int dummy; } ;


 int CONTINUE ;
 int EAP_CODE_REQUEST ;
 int EAP_TLS_FLAGS_START ;
 int FAILURE ;
 int MSG_ERROR ;
 struct wpabuf* eap_tls_msg_alloc (int ,int,int ,int ) ;
 int eap_tls_state (struct eap_tls_data*,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * eap_tls_build_start(struct eap_sm *sm,
        struct eap_tls_data *data, u8 id)
{
 struct wpabuf *req;

 req = eap_tls_msg_alloc(data->eap_type, 1, EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-TLS: Failed to allocate memory for "
      "request");
  eap_tls_state(data, FAILURE);
  return ((void*)0);
 }

 wpabuf_put_u8(req, EAP_TLS_FLAGS_START);

 eap_tls_state(data, CONTINUE);

 return req;
}
