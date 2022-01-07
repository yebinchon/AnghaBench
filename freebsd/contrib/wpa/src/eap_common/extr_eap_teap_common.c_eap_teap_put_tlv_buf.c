
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpabuf {int dummy; } ;


 int eap_teap_put_tlv_hdr (struct wpabuf*,int ,int ) ;
 int wpabuf_len (struct wpabuf const*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf const*) ;

void eap_teap_put_tlv_buf(struct wpabuf *buf, u16 type,
     const struct wpabuf *data)
{
 eap_teap_put_tlv_hdr(buf, type, wpabuf_len(data));
 wpabuf_put_buf(buf, data);
}
