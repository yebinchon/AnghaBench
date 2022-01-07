
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {struct wpa_radio* radio; int radio_list; int ifname; } ;
struct wpa_radio {int name; int ifaces; } ;


 int MSG_DEBUG ;
 int dl_list_del (int *) ;
 int dl_list_empty (int *) ;
 int eloop_cancel_timeout (int ,struct wpa_radio*,int *) ;
 int os_free (struct wpa_radio*) ;
 int radio_remove_works (struct wpa_supplicant*,int *,int ) ;
 int radio_start_next_work ;
 int wpa_printf (int ,char*,int ,...) ;

__attribute__((used)) static void radio_remove_interface(struct wpa_supplicant *wpa_s)
{
 struct wpa_radio *radio = wpa_s->radio;

 if (!radio)
  return;

 wpa_printf(MSG_DEBUG, "Remove interface %s from radio %s",
     wpa_s->ifname, radio->name);
 dl_list_del(&wpa_s->radio_list);
 radio_remove_works(wpa_s, ((void*)0), 0);
 wpa_s->radio = ((void*)0);
 if (!dl_list_empty(&radio->ifaces))
  return;

 wpa_printf(MSG_DEBUG, "Remove radio %s", radio->name);
 eloop_cancel_timeout(radio_start_next_work, radio, ((void*)0));
 os_free(radio);
}
