
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct pt_query_decoder {unsigned int pos; int config; int tcal; int time; } ;
struct pt_packet_decoder {int dummy; } ;
struct TYPE_2__ {int cyc; int mtc; int tma; int cbr; int tsc; } ;
struct pt_packet {int type; TYPE_1__ payload; } ;
typedef int packet ;
 int pt_pkt_get_offset (struct pt_packet_decoder*,scalar_t__*) ;
 int pt_pkt_next (struct pt_packet_decoder*,struct pt_packet*,int) ;
 int pt_pkt_sync_set (struct pt_packet_decoder*,scalar_t__) ;
 int pt_qry_apply_cbr (int *,int *,int *,int *) ;
 int pt_qry_apply_cyc (int *,int *,int *,int *) ;
 int pt_qry_apply_mtc (int *,int *,int *,int *) ;
 int pt_qry_apply_tma (int *,int *,int *,int *) ;
 int pt_qry_apply_tsc (int *,int *,int *,int *) ;
 int pt_qry_event_ovf_disabled (struct pt_query_decoder*) ;
 int pt_qry_get_offset (struct pt_query_decoder*,scalar_t__*) ;
 int pte_eos ;
 int pte_internal ;

__attribute__((used)) static int apl12_resume_disabled(struct pt_query_decoder *decoder,
     struct pt_packet_decoder *pkt,
     unsigned int offset)
{
 uint64_t begin, end;
 int errcode;

 if (!decoder)
  return -pte_internal;

 errcode = pt_qry_get_offset(decoder, &begin);
 if (errcode < 0)
  return errcode;

 errcode = pt_pkt_sync_set(pkt, begin);
 if (errcode < 0)
  return errcode;

 end = begin + offset;
 for (;;) {
  struct pt_packet packet;
  uint64_t next;

  errcode = pt_pkt_next(pkt, &packet, sizeof(packet));
  if (errcode < 0) {

   if (errcode == -pte_eos)
    errcode = 0;

   return errcode;
  }


  errcode = pt_pkt_get_offset(pkt, &next);
  if (errcode < 0)
   return errcode;
  if (end <= next) {
   if (end < next)
    return -pte_internal;

   break;
  }

  switch (packet.type) {
  default:

   break;

  case 133:
  case 131:
  case 128:





   return -pte_internal;

  case 129:

   errcode = pt_qry_apply_tsc(&decoder->time,
         &decoder->tcal,
         &packet.payload.tsc,
         &decoder->config);
   if (errcode < 0)
    return errcode;

   break;

  case 135:

   errcode = pt_qry_apply_cbr(&decoder->time,
         &decoder->tcal,
         &packet.payload.cbr,
         &decoder->config);
   if (errcode < 0)
    return errcode;

   break;

  case 130:

   errcode = pt_qry_apply_tma(&decoder->time,
         &decoder->tcal,
         &packet.payload.tma,
         &decoder->config);
   if (errcode < 0)
    return errcode;

   break;

  case 132:

   errcode = pt_qry_apply_mtc(&decoder->time,
         &decoder->tcal,
         &packet.payload.mtc,
         &decoder->config);
   if (errcode < 0)
    return errcode;

   break;

  case 134:

   errcode = pt_qry_apply_cyc(&decoder->time,
         &decoder->tcal,
         &packet.payload.cyc,
         &decoder->config);
   if (errcode < 0)
    return errcode;

   break;
  }
 }

 decoder->pos += offset;

 return pt_qry_event_ovf_disabled(decoder);
}
