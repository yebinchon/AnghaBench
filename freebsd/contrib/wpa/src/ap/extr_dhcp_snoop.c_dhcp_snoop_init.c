
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int * sock_dhcp; } ;


 int L2_PACKET_FILTER_DHCP ;
 int MSG_DEBUG ;
 int errno ;
 int handle_dhcp ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;
 int * x_snoop_get_l2_packet (struct hostapd_data*,int ,int ) ;

int dhcp_snoop_init(struct hostapd_data *hapd)
{
 hapd->sock_dhcp = x_snoop_get_l2_packet(hapd, handle_dhcp,
      L2_PACKET_FILTER_DHCP);
 if (hapd->sock_dhcp == ((void*)0)) {
  wpa_printf(MSG_DEBUG,
      "dhcp_snoop: Failed to initialize L2 packet processing for DHCP packet: %s",
      strerror(errno));
  return -1;
 }

 return 0;
}
