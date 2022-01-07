
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int * sock_ndisc; } ;


 int l2_packet_deinit (int *) ;

void ndisc_snoop_deinit(struct hostapd_data *hapd)
{
 l2_packet_deinit(hapd->sock_ndisc);
 hapd->sock_ndisc = ((void*)0);
}
