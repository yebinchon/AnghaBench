
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int os_memcpy (int ,void const*,size_t) ;
 int wpabuf_put (struct wpabuf*,size_t) ;

__attribute__((used)) static inline void wpabuf_put_data(struct wpabuf *buf, const void *data,
       size_t len)
{
 if (data)
  os_memcpy(wpabuf_put(buf, len), data, len);
}
