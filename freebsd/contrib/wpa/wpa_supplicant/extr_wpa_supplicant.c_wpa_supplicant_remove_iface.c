
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {unsigned int mesh_if_created; int ifname; struct wpa_supplicant* next; struct wpa_supplicant* parent; } ;
struct wpa_global {struct wpa_supplicant* p2p_invite_group; struct wpa_supplicant* p2p_group_formation; struct wpa_supplicant* ifaces; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WPA_IF_MESH ;
 int os_free (char*) ;
 char* os_strdup (int ) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,...) ;
 int wpa_drv_if_remove (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_deinit_iface (struct wpa_supplicant*,int,int) ;

int wpa_supplicant_remove_iface(struct wpa_global *global,
    struct wpa_supplicant *wpa_s,
    int terminate)
{
 struct wpa_supplicant *prev;







 prev = global->ifaces;
 if (prev == wpa_s) {
  global->ifaces = wpa_s->next;
 } else {
  while (prev && prev->next != wpa_s)
   prev = prev->next;
  if (prev == ((void*)0))
   return -1;
  prev->next = wpa_s->next;
 }

 wpa_dbg(wpa_s, MSG_DEBUG, "Removing interface %s", wpa_s->ifname);
 if (global->p2p_group_formation == wpa_s)
  global->p2p_group_formation = ((void*)0);
 if (global->p2p_invite_group == wpa_s)
  global->p2p_invite_group = ((void*)0);
 wpa_supplicant_deinit_iface(wpa_s, 1, terminate);
 return 0;
}
