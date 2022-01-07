
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_packet_decoder {int dummy; } ;
struct pt_packet {int type; } ;
typedef int packet ;
 int pt_pkt_next (struct pt_packet_decoder*,struct pt_packet*,int) ;
 int pte_bad_context ;
 int pte_bad_opc ;

__attribute__((used)) static int pt_pkt_find_ovf_fup(struct pt_packet_decoder *decoder)
{
 for (;;) {
  struct pt_packet packet;
  int errcode;

  errcode = pt_pkt_next(decoder, &packet, sizeof(packet));
  if (errcode < 0)
   return errcode;

  switch (packet.type) {
  case 151:
   return 1;

  case 150:
   return -pte_bad_opc;

  case 129:
  case 144:
  case 149:
  case 154:
  case 130:
  case 133:
  case 147:
  case 153:
   continue;

  case 142:
  case 134:
  case 148:
  case 143:
  case 128:
  case 137:
  case 145:
  case 152:
  case 146:
  case 139:
  case 138:
  case 140:
   return 0;

  case 141:
  case 136:
  case 135:
  case 131:
  case 132:
   return -pte_bad_context;
  }
 }
}
