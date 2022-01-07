
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int os_strlen (char const*) ;
 int wpabuf_put_data (struct wpabuf*,char const*,int ) ;

__attribute__((used)) static inline void wpabuf_put_str(struct wpabuf *dst, const char *str)
{
 wpabuf_put_data(dst, str, os_strlen(str));
}
