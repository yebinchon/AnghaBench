
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_ttls_data {int ssl; int phase2_priv; TYPE_1__* phase2_method; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {struct wpabuf* (* buildReq ) (struct eap_sm*,int ,int ) ;} ;


 int MSG_DEBUG ;
 int RADIUS_ATTR_EAP_MESSAGE ;
 struct wpabuf* eap_server_tls_encrypt (struct eap_sm*,int *,struct wpabuf*) ;
 struct wpabuf* eap_ttls_avp_encapsulate (struct wpabuf*,int ,int) ;
 struct wpabuf* stub1 (struct eap_sm*,int ,int ) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * eap_ttls_build_phase2_eap_req(
 struct eap_sm *sm, struct eap_ttls_data *data, u8 id)
{
 struct wpabuf *buf, *encr_req;


 buf = data->phase2_method->buildReq(sm, data->phase2_priv, id);
 if (buf == ((void*)0))
  return ((void*)0);

 wpa_hexdump_buf_key(MSG_DEBUG,
       "EAP-TTLS/EAP: Encapsulate Phase 2 data", buf);

 buf = eap_ttls_avp_encapsulate(buf, RADIUS_ATTR_EAP_MESSAGE, 1);
 if (buf == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS/EAP: Failed to encapsulate "
      "packet");
  return ((void*)0);
 }

 wpa_hexdump_buf_key(MSG_DEBUG, "EAP-TTLS/EAP: Encrypt encapsulated "
       "Phase 2 data", buf);

 encr_req = eap_server_tls_encrypt(sm, &data->ssl, buf);
 wpabuf_free(buf);

 return encr_req;
}
