
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_ap {int * http; } ;
struct wpabuf {int dummy; } ;
struct http_client {int dummy; } ;
typedef enum http_client_event { ____Placeholder_http_client_event } http_client_event ;






 int MSG_DEBUG ;
 int http_client_free (int *) ;
 struct wpabuf* http_client_get_body (struct http_client*) ;
 int wpa_printf (int ,char*) ;
 int wps_er_get_device_info (struct wps_er_ap*) ;
 int wps_er_parse_device_description (struct wps_er_ap*,struct wpabuf*) ;

__attribute__((used)) static void wps_er_http_dev_desc_cb(void *ctx, struct http_client *c,
        enum http_client_event event)
{
 struct wps_er_ap *ap = ctx;
 struct wpabuf *reply;
 int ok = 0;

 switch (event) {
 case 129:
  reply = http_client_get_body(c);
  if (reply == ((void*)0))
   break;
  wps_er_parse_device_description(ap, reply);
  ok = 1;
  break;
 case 131:
 case 130:
 case 128:
  wpa_printf(MSG_DEBUG, "WPS ER: Failed to fetch device info");
  break;
 }
 http_client_free(ap->http);
 ap->http = ((void*)0);
 if (ok)
  wps_er_get_device_info(ap);
}
