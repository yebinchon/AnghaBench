
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_priv_interface {int ** l2; int * l2_addr; int * l2_addr_len; } ;
struct sockaddr_un {int dummy; } ;
typedef int socklen_t ;


 int MSG_DEBUG ;
 int WPA_PRIV_MAX_L2 ;
 int l2_packet_deinit (int *) ;
 scalar_t__ os_memcmp (int *,struct sockaddr_un*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wpa_priv_cmd_l2_unregister(struct wpa_priv_interface *iface,
           struct sockaddr_un *from,
           socklen_t fromlen)
{
 int idx;

 for (idx = 0; idx < WPA_PRIV_MAX_L2; idx++) {
  if (iface->l2_addr_len[idx] == fromlen &&
      os_memcmp(&iface->l2_addr[idx], from, fromlen) == 0)
   break;
 }
 if (idx == WPA_PRIV_MAX_L2) {
  wpa_printf(MSG_DEBUG,
      "No registered l2_packet socket found for unregister request");
  return;
 }

 if (iface->l2[idx]) {
  l2_packet_deinit(iface->l2[idx]);
  iface->l2[idx] = ((void*)0);
 }
}
