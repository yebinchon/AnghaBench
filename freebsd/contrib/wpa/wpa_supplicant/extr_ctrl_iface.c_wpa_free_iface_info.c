
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_interface_info {struct wpa_interface_info* desc; struct wpa_interface_info* ifname; struct wpa_interface_info* next; } ;


 int os_free (struct wpa_interface_info*) ;

__attribute__((used)) static void wpa_free_iface_info(struct wpa_interface_info *iface)
{
 struct wpa_interface_info *prev;

 while (iface) {
  prev = iface;
  iface = iface->next;

  os_free(prev->ifname);
  os_free(prev->desc);
  os_free(prev);
 }
}
