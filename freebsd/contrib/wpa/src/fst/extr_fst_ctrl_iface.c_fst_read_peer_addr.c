
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_WARNING ;
 int fst_printf (int ,char*,char const*) ;
 scalar_t__ hwaddr_aton (char const*,int *) ;
 scalar_t__ is_multicast_ether_addr (int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;

int fst_read_peer_addr(const char *mac, u8 *peer_addr)
{
 if (hwaddr_aton(mac, peer_addr)) {
  fst_printf(MSG_WARNING, "Bad peer_mac %s: invalid addr string",
      mac);
  return -1;
 }

 if (is_zero_ether_addr(peer_addr) ||
     is_multicast_ether_addr(peer_addr)) {
  fst_printf(MSG_WARNING, "Bad peer_mac %s: not a unicast addr",
      mac);
  return -1;
 }

 return 0;
}
