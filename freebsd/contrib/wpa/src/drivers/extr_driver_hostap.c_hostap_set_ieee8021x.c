
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_bss_params {int enabled; } ;
struct hostap_driver_data {int dummy; } ;


 int PRISM2_PARAM_HOST_DECRYPT ;
 int PRISM2_PARAM_HOST_ENCRYPT ;
 int PRISM2_PARAM_IEEE_802_1X ;
 scalar_t__ hostap_ioctl_prism2param (struct hostap_driver_data*,int ,int) ;
 int printf (char*) ;

__attribute__((used)) static int hostap_set_ieee8021x(void *priv, struct wpa_bss_params *params)
{
 struct hostap_driver_data *drv = priv;
 int enabled = params->enabled;


 if (hostap_ioctl_prism2param(drv, PRISM2_PARAM_IEEE_802_1X, enabled)) {
  printf("Could not setup IEEE 802.1X support in kernel driver."
         "\n");
  return -1;
 }

 if (!enabled)
  return 0;



 if (hostap_ioctl_prism2param(drv, PRISM2_PARAM_HOST_DECRYPT, 1) ||
     hostap_ioctl_prism2param(drv, PRISM2_PARAM_HOST_ENCRYPT, 1)) {
  printf("Could not setup host-based encryption in kernel "
         "driver.\n");
  return -1;
 }

 return 0;
}
