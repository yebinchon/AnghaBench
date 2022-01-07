
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_priv_interface {int wpas_registered; int * drv_priv; TYPE_1__* driver; int drv_addr_len; int drv_addr; int ifname; int driver_name; int * drv_global_priv; int ctx; int ** l2; } ;
struct sockaddr_un {int dummy; } ;
typedef int socklen_t ;
struct TYPE_2__ {scalar_t__ (* set_param ) (int *,int *) ;int * (* init ) (struct wpa_priv_interface*,int ) ;int * (* init2 ) (struct wpa_priv_interface*,int ,int *) ;int * (* global_init ) (int ) ;int (* global_deinit ) (int *) ;int (* deinit ) (int *) ;} ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int WPA_PRIV_MAX_L2 ;
 int l2_packet_deinit (int *) ;
 int os_memcpy (int *,struct sockaddr_un*,int ) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int * stub3 (int ) ;
 int * stub4 (struct wpa_priv_interface*,int ,int *) ;
 int * stub5 (struct wpa_priv_interface*,int ) ;
 scalar_t__ stub6 (int *,int *) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void wpa_priv_cmd_register(struct wpa_priv_interface *iface,
      struct sockaddr_un *from, socklen_t fromlen)
{
 int i;

 if (iface->drv_priv) {
  wpa_printf(MSG_DEBUG, "Cleaning up forgotten driver instance");
  if (iface->driver->deinit)
   iface->driver->deinit(iface->drv_priv);
  iface->drv_priv = ((void*)0);
  if (iface->drv_global_priv) {
   iface->driver->global_deinit(iface->drv_global_priv);
   iface->drv_global_priv = ((void*)0);
  }
  iface->wpas_registered = 0;
 }

 for (i = 0; i < WPA_PRIV_MAX_L2; i++) {
  if (iface->l2[i]) {
   wpa_printf(MSG_DEBUG,
       "Cleaning up forgotten l2_packet instance");
   l2_packet_deinit(iface->l2[i]);
   iface->l2[i] = ((void*)0);
  }
 }

 if (iface->driver->init2) {
  if (iface->driver->global_init) {
   iface->drv_global_priv =
    iface->driver->global_init(iface->ctx);
   if (!iface->drv_global_priv) {
    wpa_printf(MSG_INFO,
        "Failed to initialize driver global context");
    return;
   }
  } else {
   iface->drv_global_priv = ((void*)0);
  }
  iface->drv_priv = iface->driver->init2(iface, iface->ifname,
             iface->drv_global_priv);
 } else if (iface->driver->init) {
  iface->drv_priv = iface->driver->init(iface, iface->ifname);
 } else {
  return;
 }
 if (iface->drv_priv == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "Failed to initialize driver wrapper");
  return;
 }

 wpa_printf(MSG_DEBUG, "Driver wrapper '%s' initialized for interface "
     "'%s'", iface->driver_name, iface->ifname);

 os_memcpy(&iface->drv_addr, from, fromlen);
 iface->drv_addr_len = fromlen;
 iface->wpas_registered = 1;

 if (iface->driver->set_param &&
     iface->driver->set_param(iface->drv_priv, ((void*)0)) < 0) {
  wpa_printf(MSG_ERROR, "Driver interface rejected param");
 }
}
