
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_packet_decoder {int dummy; } ;
struct pt_packet {int dummy; } ;


 int pte_internal ;

int pt_pkt_decode_ptw(struct pt_packet_decoder *d, struct pt_packet *p)
{
 (void) d;
 (void) p;

 return -pte_internal;
}
