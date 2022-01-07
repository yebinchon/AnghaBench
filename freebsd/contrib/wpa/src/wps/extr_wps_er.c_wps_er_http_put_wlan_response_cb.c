
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_sta {int * http; } ;
struct http_client {int dummy; } ;
typedef enum http_client_event { ____Placeholder_http_client_event } http_client_event ;






 int MSG_DEBUG ;
 int http_client_free (int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wps_er_http_put_wlan_response_cb(void *ctx, struct http_client *c,
          enum http_client_event event)
{
 struct wps_er_sta *sta = ctx;

 switch (event) {
 case 129:
  wpa_printf(MSG_DEBUG, "WPS ER: PutWLANResponse OK");
  break;
 case 131:
 case 130:
 case 128:
  wpa_printf(MSG_DEBUG, "WPS ER: PutWLANResponse failed");
  break;
 }
 http_client_free(sta->http);
 sta->http = ((void*)0);
}
