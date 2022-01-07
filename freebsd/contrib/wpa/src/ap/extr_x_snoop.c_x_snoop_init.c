
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {struct hostapd_bss_config* conf; } ;
struct hostapd_bss_config {char* bridge; int isolate; } ;


 int DRV_BR_MULTICAST_SNOOPING ;
 int DRV_BR_NET_PARAM_GARP_ACCEPT ;
 int DRV_BR_PORT_ATTR_HAIRPIN_MODE ;
 int DRV_BR_PORT_ATTR_PROXYARP ;
 int MSG_DEBUG ;
 scalar_t__ hostapd_drv_br_port_set_attr (struct hostapd_data*,int ,int) ;
 scalar_t__ hostapd_drv_br_set_net_param (struct hostapd_data*,int ,int) ;
 int wpa_printf (int ,char*) ;

int x_snoop_init(struct hostapd_data *hapd)
{
 struct hostapd_bss_config *conf = hapd->conf;

 if (!conf->isolate) {
  wpa_printf(MSG_DEBUG,
      "x_snoop: ap_isolate must be enabled for x_snoop");
  return -1;
 }

 if (conf->bridge[0] == '\0') {
  wpa_printf(MSG_DEBUG,
      "x_snoop: Bridge must be configured for x_snoop");
  return -1;
 }

 if (hostapd_drv_br_port_set_attr(hapd, DRV_BR_PORT_ATTR_HAIRPIN_MODE,
      1)) {
  wpa_printf(MSG_DEBUG,
      "x_snoop: Failed to enable hairpin_mode on the bridge port");
  return -1;
 }

 if (hostapd_drv_br_port_set_attr(hapd, DRV_BR_PORT_ATTR_PROXYARP, 1)) {
  wpa_printf(MSG_DEBUG,
      "x_snoop: Failed to enable proxyarp on the bridge port");
  return -1;
 }

 if (hostapd_drv_br_set_net_param(hapd, DRV_BR_NET_PARAM_GARP_ACCEPT,
      1)) {
  wpa_printf(MSG_DEBUG,
      "x_snoop: Failed to enable accepting gratuitous ARP on the bridge");
  return -1;
 }
 return 0;
}
