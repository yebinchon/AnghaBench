
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint8_t ;
typedef unsigned long long uint64_t ;
struct pt_packet_tnt {unsigned long long payload; unsigned long long bit_size; } ;


 unsigned long long pt_pkt_tnt_bit_size (unsigned long long) ;
 int pte_bad_packet ;
 int pte_internal ;

__attribute__((used)) static int pt_pkt_read_tnt(struct pt_packet_tnt *packet, uint64_t payload)
{
 uint8_t bit_size;

 if (!packet)
  return -pte_internal;

 bit_size = pt_pkt_tnt_bit_size(payload);
 if (!bit_size)
  return -pte_bad_packet;


 payload &= ~(1ull << bit_size);

 packet->payload = payload;
 packet->bit_size = bit_size;

 return 0;
}
