
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpabuf {int dummy; } ;


 int eap_fast_put_tlv_hdr (struct wpabuf*,int ,int ) ;
 int wpabuf_put_data (struct wpabuf*,void const*,int ) ;

void eap_fast_put_tlv(struct wpabuf *buf, u16 type, const void *data,
        u16 len)
{
 eap_fast_put_tlv_hdr(buf, type, len);
 wpabuf_put_data(buf, data, len);
}
