
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct wpabuf {int dummy; } ;
struct eap_hdr {int length; void* identifier; void* code; } ;
typedef int EapType ;


 int EAP_TYPE_EXPANDED ;
 int EAP_VENDOR_IETF ;
 int host_to_be16 (size_t) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 struct eap_hdr* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be24 (struct wpabuf*,int) ;
 int wpabuf_put_be32 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

struct wpabuf * eap_msg_alloc(int vendor, EapType type, size_t payload_len,
         u8 code, u8 identifier)
{
 struct wpabuf *buf;
 struct eap_hdr *hdr;
 size_t len;

 len = sizeof(struct eap_hdr) + (vendor == EAP_VENDOR_IETF ? 1 : 8) +
  payload_len;
 buf = wpabuf_alloc(len);
 if (buf == ((void*)0))
  return ((void*)0);

 hdr = wpabuf_put(buf, sizeof(*hdr));
 hdr->code = code;
 hdr->identifier = identifier;
 hdr->length = host_to_be16(len);

 if (vendor == EAP_VENDOR_IETF) {
  wpabuf_put_u8(buf, type);
 } else {
  wpabuf_put_u8(buf, EAP_TYPE_EXPANDED);
  wpabuf_put_be24(buf, vendor);
  wpabuf_put_be32(buf, type);
 }

 return buf;
}
