
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_peap_data {int ssl; } ;
struct eap_hdr {int length; int identifier; int code; } ;


 int EAP_CODE_FAILURE ;
 int EAP_CODE_SUCCESS ;
 int MSG_DEBUG ;
 struct wpabuf* eap_server_tls_encrypt (struct eap_sm*,int *,struct wpabuf*) ;
 int host_to_be16 (size_t) ;
 int os_free (struct eap_hdr*) ;
 struct eap_hdr* os_zalloc (size_t) ;
 int wpa_hexdump_key (int ,char*,int *,size_t) ;
 int wpabuf_set (struct wpabuf*,struct eap_hdr*,size_t) ;

__attribute__((used)) static struct wpabuf * eap_peap_build_phase2_term(struct eap_sm *sm,
        struct eap_peap_data *data,
        u8 id, int success)
{
 struct wpabuf *encr_req, msgbuf;
 size_t req_len;
 struct eap_hdr *hdr;

 req_len = sizeof(*hdr);
 hdr = os_zalloc(req_len);
 if (hdr == ((void*)0))
  return ((void*)0);

 hdr->code = success ? EAP_CODE_SUCCESS : EAP_CODE_FAILURE;
 hdr->identifier = id;
 hdr->length = host_to_be16(req_len);

 wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: Encrypting Phase 2 data",
   (u8 *) hdr, req_len);

 wpabuf_set(&msgbuf, hdr, req_len);
 encr_req = eap_server_tls_encrypt(sm, &data->ssl, &msgbuf);
 os_free(hdr);

 return encr_req;
}
