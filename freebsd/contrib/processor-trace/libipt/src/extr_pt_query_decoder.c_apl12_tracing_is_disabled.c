
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_packet_decoder {int dummy; } ;
struct pt_packet {int type; } ;
typedef int packet ;
 int pt_pkt_next (struct pt_packet_decoder*,struct pt_packet*,int) ;
 int pt_qry_find_header_fup (struct pt_packet*,struct pt_packet_decoder*) ;
 int pte_bad_context ;
 int pte_eos ;
 int pte_internal ;

__attribute__((used)) static int apl12_tracing_is_disabled(struct pt_packet_decoder *decoder)
{
 if (!decoder)
  return -pte_internal;

 for (;;) {
  struct pt_packet packet;
  int status;

  status = pt_pkt_next(decoder, &packet, sizeof(packet));
  if (status < 0) {

   if (status == -pte_eos)
    status = 1;

   return status;
  }

  switch (packet.type) {
  default:

   break;

  case 134:

   return 0;

  case 131:

   return 0;

  case 129:
  case 130:
  case 133:
  case 132:



   return 1;

  case 136:



   status = pt_qry_find_header_fup(&packet, decoder);


   if (status == -pte_eos)
    status = 1;

   return status;

  case 135:

   return -pte_bad_context;

  case 137:

   return 1;

  case 128:
  case 138:

   return 1;
  }
 }
}
