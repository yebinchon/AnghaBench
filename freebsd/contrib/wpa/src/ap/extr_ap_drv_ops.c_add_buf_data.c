
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 scalar_t__ wpabuf_resize (struct wpabuf**,size_t) ;

__attribute__((used)) static int add_buf_data(struct wpabuf **dst, const u8 *data, size_t len)
{
 if (!data || !len)
  return 0;
 if (wpabuf_resize(dst, len) != 0)
  return -1;
 wpabuf_put_data(*dst, data, len);
 return 0;
}
