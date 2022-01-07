
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er {int dummy; } ;
struct wpabuf {int dummy; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct http_request {int dummy; } ;
typedef enum httpread_hdr_type { ____Placeholder_httpread_hdr_type } httpread_hdr_type ;



 int MSG_DEBUG ;
 int http_put_date (struct wpabuf*) ;
 int http_request_deinit (struct http_request*) ;
 struct sockaddr_in* http_request_get_cli_addr (struct http_request*) ;
 int http_request_get_type (struct http_request*) ;
 int http_request_get_uri (struct http_request*) ;
 int http_request_send_and_deinit (struct http_request*,struct wpabuf*) ;
 int inet_ntoa (int ) ;
 int ntohs (int ) ;
 int wpa_printf (int ,char*,int,...) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_put_str (struct wpabuf*,char*) ;
 int wps_er_http_notify (struct wps_er*,struct http_request*) ;

__attribute__((used)) static void wps_er_http_req(void *ctx, struct http_request *req)
{
 struct wps_er *er = ctx;
 struct sockaddr_in *cli = http_request_get_cli_addr(req);
 enum httpread_hdr_type type = http_request_get_type(req);
 struct wpabuf *buf;

 wpa_printf(MSG_DEBUG, "WPS ER: HTTP request: '%s' (type %d) from "
     "%s:%d",
     http_request_get_uri(req), type,
     inet_ntoa(cli->sin_addr), ntohs(cli->sin_port));

 switch (type) {
 case 128:
  wps_er_http_notify(er, req);
  break;
 default:
  wpa_printf(MSG_DEBUG, "WPS ER: Unsupported HTTP request type "
      "%d", type);
  buf = wpabuf_alloc(200);
  if (buf == ((void*)0)) {
   http_request_deinit(req);
   return;
  }
  wpabuf_put_str(buf,
          "HTTP/1.1 501 Unimplemented\r\n"
          "Connection: close\r\n");
  http_put_date(buf);
  wpabuf_put_str(buf, "\r\n");
  http_request_send_and_deinit(req, buf);
  break;
 }
}
