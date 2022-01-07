
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_packet_decoder {int dummy; } ;
struct pt_packet {int type; } ;




 int pt_pkt_next (struct pt_packet_decoder*,struct pt_packet*,int) ;
 int pte_internal ;

__attribute__((used)) static int pt_qry_find_header_fup(struct pt_packet *packet,
      struct pt_packet_decoder *decoder)
{
 if (!packet || !decoder)
  return -pte_internal;

 for (;;) {
  int errcode;

  errcode = pt_pkt_next(decoder, packet, sizeof(*packet));
  if (errcode < 0)
   return errcode;

  switch (packet->type) {
  default:

   break;

  case 128:

   return 0;

  case 129:

   return 1;
  }
 }
}
