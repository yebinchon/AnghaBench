
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;


 int * wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_le16 (struct wpabuf*,int ) ;

u8 * gas_anqp_add_element(struct wpabuf *buf, u16 info_id)
{
 wpabuf_put_le16(buf, info_id);
 return wpabuf_put(buf, 2);
}
