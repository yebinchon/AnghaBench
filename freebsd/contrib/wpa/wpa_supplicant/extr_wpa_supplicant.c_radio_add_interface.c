
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int radio_list; int ifname; struct wpa_supplicant* next; struct wpa_radio* radio; TYPE_1__* global; } ;
struct wpa_radio {int ifaces; int work; int name; } ;
struct TYPE_2__ {struct wpa_supplicant* ifaces; } ;


 int MSG_DEBUG ;
 int dl_list_add (int *,int *) ;
 int dl_list_init (int *) ;
 scalar_t__ os_strcmp (char const*,int ) ;
 int os_strlcpy (int ,char const*,int) ;
 struct wpa_radio* os_zalloc (int) ;
 int wpa_printf (int ,char*,int ,char const*) ;

__attribute__((used)) static struct wpa_radio * radio_add_interface(struct wpa_supplicant *wpa_s,
           const char *rn)
{
 struct wpa_supplicant *iface = wpa_s->global->ifaces;
 struct wpa_radio *radio;

 while (rn && iface) {
  radio = iface->radio;
  if (radio && os_strcmp(rn, radio->name) == 0) {
   wpa_printf(MSG_DEBUG, "Add interface %s to existing radio %s",
       wpa_s->ifname, rn);
   dl_list_add(&radio->ifaces, &wpa_s->radio_list);
   return radio;
  }

  iface = iface->next;
 }

 wpa_printf(MSG_DEBUG, "Add interface %s to a new radio %s",
     wpa_s->ifname, rn ? rn : "N/A");
 radio = os_zalloc(sizeof(*radio));
 if (radio == ((void*)0))
  return ((void*)0);

 if (rn)
  os_strlcpy(radio->name, rn, sizeof(radio->name));
 dl_list_init(&radio->ifaces);
 dl_list_init(&radio->work);
 dl_list_add(&radio->ifaces, &wpa_s->radio_list);

 return radio;
}
