
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_ap {int list; scalar_t__ subscribed; int * wps; int * http; int location; int addr; } ;
struct wps_er {int ap_unsubscribing; int wps; } ;


 int MSG_DEBUG ;
 int WPS_EV_ER_AP_REMOVE ;
 int dl_list_add (int *,int *) ;
 int dl_list_del (int *) ;
 int eloop_cancel_timeout (int ,struct wps_er*,struct wps_er_ap*) ;
 int http_client_free (int *) ;
 int inet_ntoa (int ) ;
 int wpa_printf (int ,char*,int ,int ) ;
 int wps_deinit (int *) ;
 int wps_er_ap_event (int ,struct wps_er_ap*,int ) ;
 int wps_er_ap_free (struct wps_er_ap*) ;
 int wps_er_ap_timeout ;
 int wps_er_ap_unsubscribe (struct wps_er*,struct wps_er_ap*) ;
 int wps_er_sta_remove_all (struct wps_er_ap*) ;

__attribute__((used)) static void wps_er_ap_remove_entry(struct wps_er *er, struct wps_er_ap *ap)
{
 wpa_printf(MSG_DEBUG, "WPS ER: Removing AP entry for %s (%s)",
     inet_ntoa(ap->addr), ap->location);
 eloop_cancel_timeout(wps_er_ap_timeout, er, ap);
 wps_er_sta_remove_all(ap);
 wps_er_ap_event(er->wps, ap, WPS_EV_ER_AP_REMOVE);
 http_client_free(ap->http);
 ap->http = ((void*)0);
 if (ap->wps) {
  wps_deinit(ap->wps);
  ap->wps = ((void*)0);
 }

 dl_list_del(&ap->list);
 if (ap->subscribed) {
  dl_list_add(&er->ap_unsubscribing, &ap->list);
  wps_er_ap_unsubscribe(er, ap);
 } else
  wps_er_ap_free(ap);
}
