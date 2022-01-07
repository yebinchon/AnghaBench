
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pt_query_decoder {int config; } ;
struct pt_packet_decoder {int dummy; } ;


 int apl12_resume_disabled (struct pt_query_decoder*,struct pt_packet_decoder*,unsigned int) ;
 int apl12_tracing_is_disabled (struct pt_packet_decoder*) ;
 int pt_pkt_decoder_fini (struct pt_packet_decoder*) ;
 int pt_pkt_decoder_init (struct pt_packet_decoder*,int *) ;
 int pt_pkt_sync_set (struct pt_packet_decoder*,scalar_t__) ;
 int pt_qry_get_offset (struct pt_query_decoder*,scalar_t__*) ;
 int pte_internal ;

__attribute__((used)) static int pt_qry_handle_apl12(struct pt_query_decoder *decoder,
          unsigned int offset)
{
 struct pt_packet_decoder pkt;
 uint64_t here;
 int status;

 if (!decoder)
  return -pte_internal;

 status = pt_qry_get_offset(decoder, &here);
 if (status < 0)
  return status;

 status = pt_pkt_decoder_init(&pkt, &decoder->config);
 if (status < 0)
  return status;

 status = pt_pkt_sync_set(&pkt, here + offset);
 if (status >= 0) {
  status = apl12_tracing_is_disabled(&pkt);
  if (!status)
   status = apl12_resume_disabled(decoder, &pkt, offset);
 }

 pt_pkt_decoder_fini(&pkt);
 return status;
}
