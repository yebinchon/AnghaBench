
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef enum http_reply_code { ____Placeholder_http_reply_code } http_reply_code ;


 char* http_connection_close ;
 int http_put_reply_code (struct wpabuf*,int) ;
 char* http_server_hdr ;
 int wpabuf_put_str (struct wpabuf*,char*) ;

__attribute__((used)) static void http_put_empty(struct wpabuf *buf, enum http_reply_code code)
{
 http_put_reply_code(buf, code);
 wpabuf_put_str(buf, http_server_hdr);
 wpabuf_put_str(buf, http_connection_close);
 wpabuf_put_str(buf, "Content-Length: 0\r\n"
         "\r\n");
}
