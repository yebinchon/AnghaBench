
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int dummy; } ;
typedef enum hostapd_chan_status { ____Placeholder_hostapd_chan_status } hostapd_chan_status ;


 int HOSTAPD_CHAN_INVALID ;
 int MSG_ERROR ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static inline enum hostapd_chan_status acs_init(struct hostapd_iface *iface)
{
 wpa_printf(MSG_ERROR, "ACS was disabled on your build, rebuild hostapd with CONFIG_ACS=y or set channel");
 return HOSTAPD_CHAN_INVALID;
}
