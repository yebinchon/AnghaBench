
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_packet_decoder {int dummy; } ;
struct pt_packet {int type; } ;
typedef int packet ;
 int pt_pkt_next (struct pt_packet_decoder*,struct pt_packet*,int) ;
 int pte_eos ;

__attribute__((used)) static int scan_for_erratum_bdm70(struct pt_packet_decoder *decoder)
{
 for (;;) {
  struct pt_packet packet;
  int errcode;

  errcode = pt_pkt_next(decoder, &packet, sizeof(packet));
  if (errcode < 0) {

   if (errcode == -pte_eos)
    errcode = 0;

   return errcode;
  }

  switch (packet.type) {
  default:





   return 0;

  case 131:

   return 1;

  case 134:
  case 129:
  case 139:
  case 132:
  case 133:
  case 136:
  case 128:
  case 130:
  case 135:
  case 138:
  case 137:

   continue;
  }
 }
}
