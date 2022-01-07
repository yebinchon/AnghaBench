
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int * radio; int ifname; TYPE_1__* conf; int * drv_priv; } ;
struct wpa_interface {char* driver; } ;
struct TYPE_2__ {int driver_param; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 char* os_strchr (char const*,char) ;
 scalar_t__ os_strcmp (char const*,int ) ;
 int os_strlcpy (int ,char const*,int) ;
 int * radio_add_interface (struct wpa_supplicant*,char const*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,...) ;
 char* wpa_driver_get_radio_name (struct wpa_supplicant*) ;
 char* wpa_drv_get_ifname (struct wpa_supplicant*) ;
 int * wpa_drv_init (struct wpa_supplicant*,int ) ;
 scalar_t__ wpa_drv_set_param (struct wpa_supplicant*,int ) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,...) ;
 scalar_t__ wpa_supplicant_set_driver (struct wpa_supplicant*,char const*) ;

__attribute__((used)) static int wpas_init_driver(struct wpa_supplicant *wpa_s,
       const struct wpa_interface *iface)
{
 const char *ifname, *driver, *rn;

 driver = iface->driver;
next_driver:
 if (wpa_supplicant_set_driver(wpa_s, driver) < 0)
  return -1;

 wpa_s->drv_priv = wpa_drv_init(wpa_s, wpa_s->ifname);
 if (wpa_s->drv_priv == ((void*)0)) {
  const char *pos;
  pos = driver ? os_strchr(driver, ',') : ((void*)0);
  if (pos) {
   wpa_dbg(wpa_s, MSG_DEBUG, "Failed to initialize "
    "driver interface - try next driver wrapper");
   driver = pos + 1;
   goto next_driver;
  }
  wpa_msg(wpa_s, MSG_ERROR, "Failed to initialize driver "
   "interface");
  return -1;
 }
 if (wpa_drv_set_param(wpa_s, wpa_s->conf->driver_param) < 0) {
  wpa_msg(wpa_s, MSG_ERROR, "Driver interface rejected "
   "driver_param '%s'", wpa_s->conf->driver_param);
  return -1;
 }

 ifname = wpa_drv_get_ifname(wpa_s);
 if (ifname && os_strcmp(ifname, wpa_s->ifname) != 0) {
  wpa_dbg(wpa_s, MSG_DEBUG, "Driver interface replaced "
   "interface name with '%s'", ifname);
  os_strlcpy(wpa_s->ifname, ifname, sizeof(wpa_s->ifname));
 }

 rn = wpa_driver_get_radio_name(wpa_s);
 if (rn && rn[0] == '\0')
  rn = ((void*)0);

 wpa_s->radio = radio_add_interface(wpa_s, rn);
 if (wpa_s->radio == ((void*)0))
  return -1;

 return 0;
}
