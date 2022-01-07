
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int format_date (struct wpabuf*) ;
 int wpabuf_put_str (struct wpabuf*,char*) ;

__attribute__((used)) static void http_put_date(struct wpabuf *buf)
{
 wpabuf_put_str(buf, "Date: ");
 format_date(buf);
 wpabuf_put_str(buf, "\r\n");
}
