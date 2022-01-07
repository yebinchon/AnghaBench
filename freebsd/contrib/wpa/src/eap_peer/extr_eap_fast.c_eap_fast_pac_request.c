
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_tlv_request_action_tlv {int dummy; } ;
struct eap_tlv_pac_type_tlv {int dummy; } ;
struct eap_tlv_hdr {int dummy; } ;


 int PAC_TYPE_TUNNEL_PAC ;
 int * eap_fast_write_pac_request (int *,int ) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int * wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_fast_pac_request(void)
{
 struct wpabuf *tmp;
 u8 *pos, *pos2;

 tmp = wpabuf_alloc(sizeof(struct eap_tlv_hdr) +
      sizeof(struct eap_tlv_request_action_tlv) +
      sizeof(struct eap_tlv_pac_type_tlv));
 if (tmp == ((void*)0))
  return ((void*)0);

 pos = wpabuf_put(tmp, 0);
 pos2 = eap_fast_write_pac_request(pos, PAC_TYPE_TUNNEL_PAC);
 wpabuf_put(tmp, pos2 - pos);
 return tmp;
}
