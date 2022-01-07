
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int os_strlen (char const*) ;
 int wpabuf_printf (struct wpabuf*,char*,char const*) ;
 int xml_data_encode (struct wpabuf*,char const*,int ) ;

void xml_add_tagged_data(struct wpabuf *buf, const char *tag, const char *data)
{
 wpabuf_printf(buf, "<%s>", tag);
 xml_data_encode(buf, data, os_strlen(data));
 wpabuf_printf(buf, "</%s>\n", tag);
}
