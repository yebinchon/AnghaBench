
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostap_driver_data {scalar_t__ ioctl_sock; scalar_t__ sock; int wps_ie; int generic_ie; int netlink; } ;


 int PRISM2_PARAM_HOSTAPD ;
 int PRISM2_PARAM_HOSTAPD_STA ;
 int close (scalar_t__) ;
 int free (struct hostap_driver_data*) ;
 int hostap_ioctl_prism2param (struct hostap_driver_data*,int ,int ) ;
 int hostap_set_iface_flags (struct hostap_driver_data*,int ) ;
 int netlink_deinit (int ) ;
 int os_free (int ) ;

__attribute__((used)) static void hostap_driver_deinit(void *priv)
{
 struct hostap_driver_data *drv = priv;

 netlink_deinit(drv->netlink);
 (void) hostap_set_iface_flags(drv, 0);
 (void) hostap_ioctl_prism2param(drv, PRISM2_PARAM_HOSTAPD, 0);
 (void) hostap_ioctl_prism2param(drv, PRISM2_PARAM_HOSTAPD_STA, 0);

 if (drv->ioctl_sock >= 0)
  close(drv->ioctl_sock);

 if (drv->sock >= 0)
  close(drv->sock);

 os_free(drv->generic_ie);
 os_free(drv->wps_ie);

 free(drv);
}
