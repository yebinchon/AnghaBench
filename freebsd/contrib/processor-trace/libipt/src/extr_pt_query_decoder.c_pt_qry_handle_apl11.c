
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_query_decoder {int config; } ;
struct pt_packet_decoder {int dummy; } ;


 int apl11_apply (struct pt_query_decoder*,struct pt_packet_decoder*) ;
 int pt_pkt_decoder_fini (struct pt_packet_decoder*) ;
 int pt_pkt_decoder_init (struct pt_packet_decoder*,int *) ;
 int pt_pkt_sync_set (struct pt_packet_decoder*,int ) ;
 int pt_qry_get_offset (struct pt_query_decoder*,int *) ;
 int pte_internal ;

__attribute__((used)) static int pt_qry_handle_apl11(struct pt_query_decoder *decoder)
{
 struct pt_packet_decoder pkt;
 uint64_t offset;
 int status;

 if (!decoder)
  return -pte_internal;

 status = pt_qry_get_offset(decoder, &offset);
 if (status < 0)
  return status;

 status = pt_pkt_decoder_init(&pkt, &decoder->config);
 if (status < 0)
  return status;

 status = pt_pkt_sync_set(&pkt, offset);
 if (status >= 0)
  status = apl11_apply(decoder, &pkt);

 pt_pkt_decoder_fini(&pkt);
 return status;
}
