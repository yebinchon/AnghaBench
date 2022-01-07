
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef int len_buf ;


 int os_memcpy (char*,char*,int ) ;
 int os_snprintf (char*,int,char*,int) ;
 int os_strlen (char*) ;
 int soap_postfix ;
 int wpabuf_printf (struct wpabuf*,char*,char const*) ;
 scalar_t__ wpabuf_put (struct wpabuf*,int ) ;
 int wpabuf_put_str (struct wpabuf*,int ) ;

__attribute__((used)) static void wps_er_soap_end(struct wpabuf *buf, const char *name,
       char *len_ptr, char *body_ptr)
{
 char len_buf[10];
 wpabuf_printf(buf, "</u:%s>\n", name);
 wpabuf_put_str(buf, soap_postfix);
 os_snprintf(len_buf, sizeof(len_buf), "%d",
      (int) ((char *) wpabuf_put(buf, 0) - body_ptr));
 os_memcpy(len_ptr, len_buf, os_strlen(len_buf));
}
