
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int wpabuf_printf (struct wpabuf*,char*,char const*) ;
 int wpabuf_put_str (struct wpabuf*,char const*) ;

__attribute__((used)) static void wpabuf_put_property(struct wpabuf *buf, const char *name,
    const char *value)
{
 wpabuf_put_str(buf, "<e:property>");
 wpabuf_printf(buf, "<%s>", name);
 if (value)
  wpabuf_put_str(buf, value);
 wpabuf_printf(buf, "</%s>", name);
 wpabuf_put_str(buf, "</e:property>\n");
}
