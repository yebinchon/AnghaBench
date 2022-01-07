
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dhcp_sock; } ;


 int close (int) ;
 int eloop_unregister_read_sock (int) ;

void fils_hlp_deinit(struct hostapd_data *hapd)
{
 if (hapd->dhcp_sock >= 0) {
  eloop_unregister_read_sock(hapd->dhcp_sock);
  close(hapd->dhcp_sock);
  hapd->dhcp_sock = -1;
 }
}
