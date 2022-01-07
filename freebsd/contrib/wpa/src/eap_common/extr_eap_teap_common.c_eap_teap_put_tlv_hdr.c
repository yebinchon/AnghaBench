
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpabuf {int dummy; } ;
struct teap_tlv_hdr {void* length; void* tlv_type; } ;
typedef int hdr ;


 void* host_to_be16 (int ) ;
 int wpabuf_put_data (struct wpabuf*,struct teap_tlv_hdr*,int) ;

void eap_teap_put_tlv_hdr(struct wpabuf *buf, u16 type, u16 len)
{
 struct teap_tlv_hdr hdr;

 hdr.tlv_type = host_to_be16(type);
 hdr.length = host_to_be16(len);
 wpabuf_put_data(buf, &hdr, sizeof(hdr));
}
