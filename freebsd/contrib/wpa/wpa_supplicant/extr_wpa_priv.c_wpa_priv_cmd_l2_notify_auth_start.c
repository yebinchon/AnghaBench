
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_priv_interface {scalar_t__* l2; } ;
struct sockaddr_un {int dummy; } ;


 int WPA_PRIV_MAX_L2 ;
 int l2_packet_notify_auth_start (scalar_t__) ;

__attribute__((used)) static void wpa_priv_cmd_l2_notify_auth_start(struct wpa_priv_interface *iface,
           struct sockaddr_un *from)
{
 int idx;

 for (idx = 0; idx < WPA_PRIV_MAX_L2; idx++) {
  if (iface->l2[idx])
   l2_packet_notify_auth_start(iface->l2[idx]);
 }
}
