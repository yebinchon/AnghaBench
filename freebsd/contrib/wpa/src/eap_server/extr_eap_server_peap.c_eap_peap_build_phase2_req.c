
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_peap_data {scalar_t__ peap_version; int ssl; TYPE_1__* phase2_method; int * phase2_priv; } ;
struct eap_hdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ method; struct wpabuf* (* buildReq ) (struct eap_sm*,int *,int ) ;} ;


 scalar_t__ EAP_TYPE_TLV ;
 int MSG_DEBUG ;
 struct wpabuf* eap_server_tls_encrypt (struct eap_sm*,int *,struct wpabuf*) ;
 struct wpabuf* stub1 (struct eap_sm*,int *,int ) ;
 int wpa_hexdump_key (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int wpabuf_set (struct wpabuf*,int const*,size_t) ;

__attribute__((used)) static struct wpabuf * eap_peap_build_phase2_req(struct eap_sm *sm,
       struct eap_peap_data *data,
       u8 id)
{
 struct wpabuf *buf, *encr_req, msgbuf;
 const u8 *req;
 size_t req_len;

 if (data->phase2_method == ((void*)0) || data->phase2_priv == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Phase 2 method not ready");
  return ((void*)0);
 }
 buf = data->phase2_method->buildReq(sm, data->phase2_priv, id);
 if (buf == ((void*)0))
  return ((void*)0);

 req = wpabuf_head(buf);
 req_len = wpabuf_len(buf);
 wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: Encrypting Phase 2 data",
   req, req_len);

 if (data->peap_version == 0 &&
     data->phase2_method->method != EAP_TYPE_TLV) {
  req += sizeof(struct eap_hdr);
  req_len -= sizeof(struct eap_hdr);
 }

 wpabuf_set(&msgbuf, req, req_len);
 encr_req = eap_server_tls_encrypt(sm, &data->ssl, &msgbuf);
 wpabuf_free(buf);

 return encr_req;
}
