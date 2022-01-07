
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int inactive_sec; } ;
struct TYPE_4__ {TYPE_1__ get_info_sta; } ;
struct prism2_hostapd_param {TYPE_2__ u; int sta_addr; int cmd; } ;
struct hostap_driver_data {int dummy; } ;
typedef int param ;


 int ETH_ALEN ;
 int PRISM2_HOSTAPD_GET_INFO_STA ;
 scalar_t__ hostapd_ioctl (struct hostap_driver_data*,struct prism2_hostapd_param*,int) ;
 int memcpy (int ,int const*,int ) ;
 int memset (struct prism2_hostapd_param*,int ,int) ;

__attribute__((used)) static int hostap_get_inact_sec(void *priv, const u8 *addr)
{
 struct hostap_driver_data *drv = priv;
 struct prism2_hostapd_param param;

 memset(&param, 0, sizeof(param));
 param.cmd = PRISM2_HOSTAPD_GET_INFO_STA;
 memcpy(param.sta_addr, addr, ETH_ALEN);
 if (hostapd_ioctl(drv, &param, sizeof(param))) {
  return -1;
 }

 return param.u.get_info_sta.inactive_sec;
}
