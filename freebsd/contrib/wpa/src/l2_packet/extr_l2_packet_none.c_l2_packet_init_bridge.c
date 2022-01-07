
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2_packet_data {int dummy; } ;


 struct l2_packet_data* l2_packet_init (char const*,int const*,unsigned short,void (*) (void*,int const*,int const*,size_t),void*,int) ;

struct l2_packet_data * l2_packet_init_bridge(
 const char *br_ifname, const char *ifname, const u8 *own_addr,
 unsigned short protocol,
 void (*rx_callback)(void *ctx, const u8 *src_addr,
       const u8 *buf, size_t len),
 void *rx_callback_ctx, int l2_hdr)
{
 return l2_packet_init(br_ifname, own_addr, protocol, rx_callback,
         rx_callback_ctx, l2_hdr);
}
