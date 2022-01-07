
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u16 ;
struct l2_packet_data {int pcap; int const* own_addr; int l2_hdr; } ;
struct l2_ethhdr {int h_proto; struct l2_ethhdr* h_source; struct l2_ethhdr* h_dest; } ;


 size_t ETH_ALEN ;
 int htons (int ) ;
 int os_free (struct l2_ethhdr*) ;
 struct l2_ethhdr* os_malloc (int) ;
 int os_memcpy (struct l2_ethhdr*,int const*,size_t) ;
 int pcap_inject (int ,int const*,size_t) ;

int l2_packet_send(struct l2_packet_data *l2, const u8 *dst_addr, u16 proto,
     const u8 *buf, size_t len)
{
 if (!l2->l2_hdr) {
  int ret;
  struct l2_ethhdr *eth = os_malloc(sizeof(*eth) + len);
  if (eth == ((void*)0))
   return -1;
  os_memcpy(eth->h_dest, dst_addr, ETH_ALEN);
  os_memcpy(eth->h_source, l2->own_addr, ETH_ALEN);
  eth->h_proto = htons(proto);
  os_memcpy(eth + 1, buf, len);
  ret = pcap_inject(l2->pcap, (u8 *) eth, len + sizeof(*eth));
  os_free(eth);
  return ret;
 } else
  return pcap_inject(l2->pcap, buf, len);
}
