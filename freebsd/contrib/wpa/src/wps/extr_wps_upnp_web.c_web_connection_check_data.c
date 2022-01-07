
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_wps_device_sm {int dummy; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct http_request {int dummy; } ;
typedef enum httpread_hdr_type { ____Placeholder_httpread_hdr_type } httpread_hdr_type ;






 int MSG_DEBUG ;
 int MSG_INFO ;
 int htons (int ) ;
 int http_request_deinit (struct http_request*) ;
 struct sockaddr_in* http_request_get_cli_addr (struct http_request*) ;
 int http_request_get_type (struct http_request*) ;
 char* http_request_get_uri (struct http_request*) ;
 int inet_ntoa (int ) ;
 int web_connection_parse_get (struct upnp_wps_device_sm*,struct http_request*,char*) ;
 int web_connection_parse_post (struct upnp_wps_device_sm*,struct sockaddr_in*,struct http_request*,char*) ;
 int web_connection_parse_subscribe (struct upnp_wps_device_sm*,struct http_request*,char*) ;
 int web_connection_parse_unsubscribe (struct upnp_wps_device_sm*,struct http_request*,char*) ;
 int web_connection_unimplemented (struct http_request*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void web_connection_check_data(void *ctx, struct http_request *req)
{
 struct upnp_wps_device_sm *sm = ctx;
 enum httpread_hdr_type htype = http_request_get_type(req);
 char *filename = http_request_get_uri(req);
 struct sockaddr_in *cli = http_request_get_cli_addr(req);

 if (!filename) {
  wpa_printf(MSG_INFO, "WPS UPnP: Could not get HTTP URI");
  http_request_deinit(req);
  return;
 }

 while (*filename == '/')
  filename++;

 wpa_printf(MSG_DEBUG, "WPS UPnP: Got HTTP request type %d from %s:%d",
     htype, inet_ntoa(cli->sin_addr), htons(cli->sin_port));

 switch (htype) {
 case 131:
  web_connection_parse_get(sm, req, filename);
  break;
 case 130:
  web_connection_parse_post(sm, cli, req, filename);
  break;
 case 129:
  web_connection_parse_subscribe(sm, req, filename);
  break;
 case 128:
  web_connection_parse_unsubscribe(sm, req, filename);
  break;






 default:

  web_connection_unimplemented(req);
  break;
 }
}
