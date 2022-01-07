
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int wpabuf_printf (struct wpabuf*,char*,char const*) ;
 int wpabuf_put_str (struct wpabuf*,char*) ;

__attribute__((used)) static void add_arg(struct wpabuf *xml, const char *name, const char *type,
      const char *direction)
{
 wpabuf_printf(xml, "<arg name=\"%s\"", name);
 if (type)
  wpabuf_printf(xml, " type=\"%s\"", type);
 if (direction)
  wpabuf_printf(xml, " direction=\"%s\"", direction);
 wpabuf_put_str(xml, "/>");
}
