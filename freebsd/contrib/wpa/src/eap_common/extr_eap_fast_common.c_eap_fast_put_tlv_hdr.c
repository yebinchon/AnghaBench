
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpabuf {int dummy; } ;
struct pac_tlv_hdr {void* len; void* type; } ;
typedef int hdr ;


 void* host_to_be16 (int ) ;
 int wpabuf_put_data (struct wpabuf*,struct pac_tlv_hdr*,int) ;

void eap_fast_put_tlv_hdr(struct wpabuf *buf, u16 type, u16 len)
{
 struct pac_tlv_hdr hdr;
 hdr.type = host_to_be16(type);
 hdr.len = host_to_be16(len);
 wpabuf_put_data(buf, &hdr, sizeof(hdr));
}
