
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int * sock_dhcp; } ;


 int l2_packet_deinit (int *) ;

void dhcp_snoop_deinit(struct hostapd_data *hapd)
{
 l2_packet_deinit(hapd->sock_dhcp);
 hapd->sock_dhcp = ((void*)0);
}
