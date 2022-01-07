
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prism2_hostapd_param {int cmd; } ;
struct hostap_driver_data {int dummy; } ;
typedef int param ;


 int PRISM2_HOSTAPD_FLUSH ;
 int hostapd_ioctl (struct hostap_driver_data*,struct prism2_hostapd_param*,int) ;
 int memset (struct prism2_hostapd_param*,int ,int) ;

__attribute__((used)) static int hostap_flush(void *priv)
{
 struct hostap_driver_data *drv = priv;
 struct prism2_hostapd_param param;

 memset(&param, 0, sizeof(param));
 param.cmd = PRISM2_HOSTAPD_FLUSH;
 return hostapd_ioctl(drv, &param, sizeof(param));
}
