
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int os_memset (int ,int ,size_t) ;
 int wpabuf_put (struct wpabuf*,size_t) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

void eap_sake_add_attr(struct wpabuf *buf, u8 type, const u8 *data,
         size_t len)
{
 wpabuf_put_u8(buf, type);
 wpabuf_put_u8(buf, 2 + len);
 if (data)
  wpabuf_put_data(buf, data, len);
 else
  os_memset(wpabuf_put(buf, len), 0, len);
}
