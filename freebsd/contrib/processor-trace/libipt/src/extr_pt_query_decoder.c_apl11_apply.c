
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct pt_time_cal {int dummy; } ;
struct pt_time {int dummy; } ;
struct TYPE_8__ {scalar_t__ begin; } ;
struct pt_query_decoder {TYPE_2__ config; scalar_t__ pos; struct pt_time_cal tcal; struct pt_time time; } ;
struct pt_packet_decoder {int dummy; } ;
struct TYPE_7__ {int cyc; int mtc; int tma; int cbr; int tsc; } ;
struct pt_packet {int type; TYPE_1__ payload; } ;
typedef int packet ;
 int pt_pkt_get_offset (struct pt_packet_decoder*,scalar_t__*) ;
 int pt_pkt_next (struct pt_packet_decoder*,struct pt_packet*,int) ;
 int pt_qry_apply_cbr (struct pt_time*,struct pt_time_cal*,int *,TYPE_2__*) ;
 int pt_qry_apply_cyc (struct pt_time*,struct pt_time_cal*,int *,TYPE_2__*) ;
 int pt_qry_apply_mtc (struct pt_time*,struct pt_time_cal*,int *,TYPE_2__*) ;
 int pt_qry_apply_tma (struct pt_time*,struct pt_time_cal*,int *,TYPE_2__*) ;
 int pt_qry_apply_tsc (struct pt_time*,struct pt_time_cal*,int *,TYPE_2__*) ;
 int pt_qry_event_ovf_disabled (struct pt_query_decoder*) ;
 int pte_bad_context ;
 int pte_bad_opc ;
 int pte_internal ;

__attribute__((used)) static int apl11_apply(struct pt_query_decoder *decoder,
         struct pt_packet_decoder *pkt)
{
 struct pt_time_cal tcal;
 struct pt_time time;

 if (!decoder)
  return -pte_internal;

 time = decoder->time;
 tcal = decoder->tcal;
 for (;;) {
  struct pt_packet packet;
  int errcode;

  errcode = pt_pkt_next(pkt, &packet, sizeof(packet));
  if (errcode < 0)
   return errcode;

  switch (packet.type) {
  case 135: {
   uint64_t offset;





   errcode = pt_pkt_get_offset(pkt, &offset);
   if (errcode < 0)
    return errcode;

   decoder->time = time;
   decoder->tcal = tcal;
   decoder->pos = decoder->config.begin + offset;

   return pt_qry_event_ovf_disabled(decoder);
  }

  case 150:
   return -pte_bad_opc;

  case 151:
  case 142:
  case 134:
  case 137:
  case 145:
  case 148:
  case 143:
  case 128:
  case 152:
  case 146:
  case 139:
  case 138:
  case 140:

   return 1;

  case 129:
  case 144:
  case 149:

   break;

  case 141:
  case 136:
  case 131:
  case 132:
   return -pte_bad_context;


  case 130:

   errcode = pt_qry_apply_tsc(&time, &tcal,
         &packet.payload.tsc,
         &decoder->config);
   if (errcode < 0)
    return errcode;

   break;

  case 154:

   errcode = pt_qry_apply_cbr(&time, &tcal,
         &packet.payload.cbr,
         &decoder->config);
   if (errcode < 0)
    return errcode;

   break;

  case 133:

   errcode = pt_qry_apply_tma(&time, &tcal,
         &packet.payload.tma,
         &decoder->config);
   if (errcode < 0)
    return errcode;

   break;

  case 147:

   errcode = pt_qry_apply_mtc(&time, &tcal,
         &packet.payload.mtc,
         &decoder->config);
   if (errcode < 0)
    return errcode;

   break;

  case 153:

   errcode = pt_qry_apply_cyc(&time, &tcal,
         &packet.payload.cyc,
         &decoder->config);
   if (errcode < 0)
    return errcode;

   break;
  }
 }
}
