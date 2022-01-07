
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_interface_info {char* desc; int ifname; int drv_name; struct wpa_interface_info* next; } ;
struct wpa_global {int * drv_priv; } ;
struct wpa_driver_ops {struct wpa_interface_info* (* get_interfaces ) (int ) ;} ;


 int os_snprintf (char*,int,char*,int ,int ,char*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 struct wpa_interface_info* stub1 (int ) ;
 struct wpa_driver_ops** wpa_drivers ;
 int wpa_free_iface_info (struct wpa_interface_info*) ;

__attribute__((used)) static int wpa_supplicant_global_iface_list(struct wpa_global *global,
         char *buf, int len)
{
 int i, res;
 struct wpa_interface_info *iface = ((void*)0), *last = ((void*)0), *tmp;
 char *pos, *end;

 for (i = 0; wpa_drivers[i]; i++) {
  const struct wpa_driver_ops *drv = wpa_drivers[i];
  if (drv->get_interfaces == ((void*)0))
   continue;
  tmp = drv->get_interfaces(global->drv_priv[i]);
  if (tmp == ((void*)0))
   continue;

  if (last == ((void*)0))
   iface = last = tmp;
  else
   last->next = tmp;
  while (last->next)
   last = last->next;
 }

 pos = buf;
 end = buf + len;
 for (tmp = iface; tmp; tmp = tmp->next) {
  res = os_snprintf(pos, end - pos, "%s\t%s\t%s\n",
      tmp->drv_name, tmp->ifname,
      tmp->desc ? tmp->desc : "");
  if (os_snprintf_error(end - pos, res)) {
   *pos = '\0';
   break;
  }
  pos += res;
 }

 wpa_free_iface_info(iface);

 return pos - buf;
}
