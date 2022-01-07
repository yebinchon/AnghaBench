
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct prism2_hostapd_param {int sta_addr; int cmd; } ;
struct hostap_driver_data {int dummy; } ;
typedef int param ;


 int ETH_ALEN ;
 int PRISM2_HOSTAPD_REMOVE_STA ;
 int WPA_STA_AUTHORIZED ;
 int hostap_sta_set_flags (struct hostap_driver_data*,int const*,int ,int ,int ) ;
 scalar_t__ hostapd_ioctl (struct hostap_driver_data*,struct prism2_hostapd_param*,int) ;
 int memcpy (int ,int const*,int ) ;
 int memset (struct prism2_hostapd_param*,int ,int) ;
 int printf (char*) ;

__attribute__((used)) static int hostap_sta_remove(void *priv, const u8 *addr)
{
 struct hostap_driver_data *drv = priv;
 struct prism2_hostapd_param param;

 hostap_sta_set_flags(drv, addr, 0, 0, ~WPA_STA_AUTHORIZED);

 memset(&param, 0, sizeof(param));
 param.cmd = PRISM2_HOSTAPD_REMOVE_STA;
 memcpy(param.sta_addr, addr, ETH_ALEN);
 if (hostapd_ioctl(drv, &param, sizeof(param))) {
  printf("Could not remove station from kernel driver.\n");
  return -1;
 }
 return 0;
}
