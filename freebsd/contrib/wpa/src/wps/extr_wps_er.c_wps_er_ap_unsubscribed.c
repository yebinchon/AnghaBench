
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_ap {int list; int location; int addr; } ;
struct wps_er {int ap_unsubscribing; scalar_t__ deinitializing; } ;


 int MSG_DEBUG ;
 int dl_list_del (int *) ;
 scalar_t__ dl_list_empty (int *) ;
 int inet_ntoa (int ) ;
 int wpa_printf (int ,char*,int ,int ) ;
 int wps_er_ap_free (struct wps_er_ap*) ;
 int wps_er_deinit_finish (struct wps_er*,int *) ;

__attribute__((used)) static void wps_er_ap_unsubscribed(struct wps_er *er, struct wps_er_ap *ap)
{
 wpa_printf(MSG_DEBUG, "WPS ER: Unsubscribed from AP %s (%s)",
     inet_ntoa(ap->addr), ap->location);
 dl_list_del(&ap->list);
 wps_er_ap_free(ap);

 if (er->deinitializing && dl_list_empty(&er->ap_unsubscribing))
  wps_er_deinit_finish(er, ((void*)0));
}
