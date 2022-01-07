
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int * sock_ndisc; } ;


 int L2_PACKET_FILTER_NDISC ;
 int MSG_DEBUG ;
 int errno ;
 int handle_ndisc ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;
 int * x_snoop_get_l2_packet (struct hostapd_data*,int ,int ) ;

int ndisc_snoop_init(struct hostapd_data *hapd)
{
 hapd->sock_ndisc = x_snoop_get_l2_packet(hapd, handle_ndisc,
       L2_PACKET_FILTER_NDISC);
 if (hapd->sock_ndisc == ((void*)0)) {
  wpa_printf(MSG_DEBUG,
      "ndisc_snoop: Failed to initialize L2 packet processing for NDISC packets: %s",
      strerror(errno));
  return -1;
 }

 return 0;
}
