
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_ap {int er; int * http; int subscribed; } ;
struct http_client {int dummy; } ;
typedef enum http_client_event { ____Placeholder_http_client_event } http_client_event ;






 int MSG_DEBUG ;
 int http_client_free (int *) ;
 int wpa_printf (int ,char*) ;
 int wps_er_ap_unsubscribed (int ,struct wps_er_ap*) ;

__attribute__((used)) static void wps_er_http_unsubscribe_cb(void *ctx, struct http_client *c,
           enum http_client_event event)
{
 struct wps_er_ap *ap = ctx;

 switch (event) {
 case 129:
  wpa_printf(MSG_DEBUG, "WPS ER: Unsubscribed from events");
  ap->subscribed = 0;
  break;
 case 131:
 case 130:
 case 128:
  wpa_printf(MSG_DEBUG, "WPS ER: Failed to unsubscribe from "
      "events");
  break;
 }
 http_client_free(ap->http);
 ap->http = ((void*)0);





 wps_er_ap_unsubscribed(ap->er, ap);
}
