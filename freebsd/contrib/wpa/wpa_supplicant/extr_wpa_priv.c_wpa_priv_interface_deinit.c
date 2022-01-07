
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_priv_interface {scalar_t__ fd; struct wpa_priv_interface* sock_name; struct wpa_priv_interface* driver_name; struct wpa_priv_interface* ifname; scalar_t__* l2; scalar_t__ drv_global_priv; TYPE_1__* driver; scalar_t__ drv_priv; } ;
struct TYPE_2__ {int (* global_deinit ) (scalar_t__) ;int (* deinit ) (scalar_t__) ;} ;


 int WPA_PRIV_MAX_L2 ;
 int close (scalar_t__) ;
 int eloop_unregister_read_sock (scalar_t__) ;
 int l2_packet_deinit (scalar_t__) ;
 int os_free (struct wpa_priv_interface*) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;
 int unlink (struct wpa_priv_interface*) ;

__attribute__((used)) static void wpa_priv_interface_deinit(struct wpa_priv_interface *iface)
{
 int i;

 if (iface->drv_priv) {
  if (iface->driver->deinit)
   iface->driver->deinit(iface->drv_priv);
  if (iface->drv_global_priv)
   iface->driver->global_deinit(iface->drv_global_priv);
 }

 if (iface->fd >= 0) {
  eloop_unregister_read_sock(iface->fd);
  close(iface->fd);
  unlink(iface->sock_name);
 }

 for (i = 0; i < WPA_PRIV_MAX_L2; i++) {
  if (iface->l2[i])
   l2_packet_deinit(iface->l2[i]);
 }

 os_free(iface->ifname);
 os_free(iface->driver_name);
 os_free(iface->sock_name);
 os_free(iface);
}
