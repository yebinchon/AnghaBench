
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_priv_interface {int ** l2; int * l2_addr; int * l2_addr_len; } ;
struct sockaddr_un {int dummy; } ;
typedef int socklen_t ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int WPA_PRIV_MAX_L2 ;
 int l2_packet_send (int *,int *,int ,void*,size_t) ;
 scalar_t__ os_memcmp (int *,struct sockaddr_un*,int ) ;
 int os_memcpy (int *,void*,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_priv_allowed_l2_proto (int ) ;

__attribute__((used)) static void wpa_priv_cmd_l2_send(struct wpa_priv_interface *iface,
     struct sockaddr_un *from, socklen_t fromlen,
     void *buf, size_t len)
{
 u8 *dst_addr;
 u16 proto;
 int res;
 int idx;

 for (idx = 0; idx < WPA_PRIV_MAX_L2; idx++) {
  if (iface->l2_addr_len[idx] == fromlen &&
      os_memcmp(&iface->l2_addr[idx], from, fromlen) == 0)
   break;
 }
 if (idx == WPA_PRIV_MAX_L2) {
  wpa_printf(MSG_DEBUG,
      "No registered l2_packet socket found for send request");
  return;
 }

 if (iface->l2[idx] == ((void*)0))
  return;

 if (len < ETH_ALEN + 2) {
  wpa_printf(MSG_DEBUG, "Too short L2 send packet (len=%lu)",
      (unsigned long) len);
  return;
 }

 dst_addr = buf;
 os_memcpy(&proto, buf + ETH_ALEN, 2);

 if (!wpa_priv_allowed_l2_proto(proto)) {
  wpa_printf(MSG_DEBUG, "Refused l2_packet send for ethertype "
      "0x%x", proto);
  return;
 }

 res = l2_packet_send(iface->l2[idx], dst_addr, proto,
        buf + ETH_ALEN + 2, len - ETH_ALEN - 2);
 wpa_printf(MSG_DEBUG, "L2 send[idx=%d]: res=%d", idx, res);
}
