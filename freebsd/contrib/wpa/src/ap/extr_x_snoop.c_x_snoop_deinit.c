
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;


 int DRV_BR_NET_PARAM_GARP_ACCEPT ;
 int DRV_BR_PORT_ATTR_HAIRPIN_MODE ;
 int DRV_BR_PORT_ATTR_PROXYARP ;
 int hostapd_drv_br_port_set_attr (struct hostapd_data*,int ,int ) ;
 int hostapd_drv_br_set_net_param (struct hostapd_data*,int ,int ) ;

void x_snoop_deinit(struct hostapd_data *hapd)
{
 hostapd_drv_br_set_net_param(hapd, DRV_BR_NET_PARAM_GARP_ACCEPT, 0);
 hostapd_drv_br_port_set_attr(hapd, DRV_BR_PORT_ATTR_PROXYARP, 0);
 hostapd_drv_br_port_set_attr(hapd, DRV_BR_PORT_ATTR_HAIRPIN_MODE, 0);
}
