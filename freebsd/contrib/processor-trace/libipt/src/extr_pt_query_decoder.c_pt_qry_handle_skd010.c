
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_query_decoder {int config; } ;
struct pt_packet_decoder {int dummy; } ;


 int pt_pkt_decoder_fini (struct pt_packet_decoder*) ;
 int pt_pkt_decoder_init (struct pt_packet_decoder*,int *) ;
 int pt_pkt_sync_set (struct pt_packet_decoder*,int ) ;
 int pt_qry_get_offset (struct pt_query_decoder*,int *) ;
 int pte_internal ;
 int skd010_scan_for_ovf_resume (struct pt_packet_decoder*,struct pt_query_decoder*) ;

__attribute__((used)) static int pt_qry_handle_skd010(struct pt_query_decoder *decoder)
{
 struct pt_packet_decoder pkt;
 uint64_t offset;
 int errcode;

 if (!decoder)
  return -pte_internal;

 errcode = pt_qry_get_offset(decoder, &offset);
 if (errcode < 0)
  return errcode;

 errcode = pt_pkt_decoder_init(&pkt, &decoder->config);
 if (errcode < 0)
  return errcode;

 errcode = pt_pkt_sync_set(&pkt, offset);
 if (errcode >= 0)
  errcode = skd010_scan_for_ovf_resume(&pkt, decoder);

 pt_pkt_decoder_fini(&pkt);
 return errcode;
}
