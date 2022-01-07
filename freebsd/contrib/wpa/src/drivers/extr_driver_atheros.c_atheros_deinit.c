
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atheros_driver_data {scalar_t__ ioctl_sock; int * sock_raw; int * sock_xmit; int * sock_recv; int iface; int netlink; scalar_t__ wps_probe_resp_ie; scalar_t__ wps_beacon_ie; scalar_t__ wpa_ie; } ;


 int atheros_reset_appfilter (struct atheros_driver_data*) ;
 int atheros_set_opt_ie (void*,int *,int ) ;
 int close (scalar_t__) ;
 int l2_packet_deinit (int *) ;
 int linux_set_iface_flags (scalar_t__,int ,int ) ;
 int netlink_deinit (int ) ;
 int os_free (struct atheros_driver_data*) ;
 int wpabuf_free (scalar_t__) ;

__attribute__((used)) static void
atheros_deinit(void *priv)
{
 struct atheros_driver_data *drv = priv;

 atheros_reset_appfilter(drv);

 if (drv->wpa_ie || drv->wps_beacon_ie || drv->wps_probe_resp_ie) {
  atheros_set_opt_ie(priv, ((void*)0), 0);
  wpabuf_free(drv->wpa_ie);
  wpabuf_free(drv->wps_beacon_ie);
  wpabuf_free(drv->wps_probe_resp_ie);
 }
 netlink_deinit(drv->netlink);
 (void) linux_set_iface_flags(drv->ioctl_sock, drv->iface, 0);
 if (drv->ioctl_sock >= 0)
  close(drv->ioctl_sock);
 if (drv->sock_recv != ((void*)0) && drv->sock_recv != drv->sock_xmit)
  l2_packet_deinit(drv->sock_recv);
 if (drv->sock_xmit != ((void*)0))
  l2_packet_deinit(drv->sock_xmit);
 if (drv->sock_raw)
  l2_packet_deinit(drv->sock_raw);
 os_free(drv);
}
