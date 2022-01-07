
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_er_ap {int subscribed; int * http; TYPE_1__* er; } ;
struct http_client {int dummy; } ;
typedef enum http_client_event { ____Placeholder_http_client_event } http_client_event ;
struct TYPE_2__ {int wps; } ;






 int MSG_DEBUG ;
 int WPS_EV_ER_AP_ADD ;
 int http_client_free (int *) ;
 int http_client_get_hdr_line (struct http_client*,char*) ;
 int wpa_printf (int ,char*) ;
 int wps_er_ap_event (int ,struct wps_er_ap*,int ) ;
 int wps_er_ap_use_cached_settings (TYPE_1__*,struct wps_er_ap*) ;
 int wps_er_get_sid (struct wps_er_ap*,int ) ;

__attribute__((used)) static void wps_er_http_subscribe_cb(void *ctx, struct http_client *c,
         enum http_client_event event)
{
 struct wps_er_ap *ap = ctx;

 switch (event) {
 case 129:
  wpa_printf(MSG_DEBUG, "WPS ER: Subscribed to events");
  ap->subscribed = 1;
  wps_er_get_sid(ap, http_client_get_hdr_line(c, "SID"));
  wps_er_ap_use_cached_settings(ap->er, ap);
  wps_er_ap_event(ap->er->wps, ap, WPS_EV_ER_AP_ADD);
  break;
 case 131:
 case 130:
 case 128:
  wpa_printf(MSG_DEBUG, "WPS ER: Failed to subscribe to events");
  break;
 }
 http_client_free(ap->http);
 ap->http = ((void*)0);
}
