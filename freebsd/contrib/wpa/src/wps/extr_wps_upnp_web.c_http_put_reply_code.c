
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef enum http_reply_code { ____Placeholder_http_reply_code } http_reply_code ;







 int wpabuf_put_str (struct wpabuf*,char*) ;

__attribute__((used)) static void http_put_reply_code(struct wpabuf *buf, enum http_reply_code code)
{
 wpabuf_put_str(buf, "HTTP/1.1 ");
 switch (code) {
 case 130:
  wpabuf_put_str(buf, "200 OK\r\n");
  break;
 case 132:
  wpabuf_put_str(buf, "400 Bad request\r\n");
  break;
 case 129:
  wpabuf_put_str(buf, "412 Precondition failed\r\n");
  break;
 case 128:
  wpabuf_put_str(buf, "501 Unimplemented\r\n");
  break;
 case 131:
 default:
  wpabuf_put_str(buf, "500 Internal server error\r\n");
  break;
 }
}
