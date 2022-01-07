
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct pt_packet_decoder {int dummy; } ;
struct pt_config {int const* begin; } ;


 int pt_pkt_decoder_fini (struct pt_packet_decoder*) ;
 int pt_pkt_decoder_init (struct pt_packet_decoder*,struct pt_config const*) ;
 int pt_pkt_sync_set (struct pt_packet_decoder*,int ) ;
 int pte_internal ;
 int scan_for_erratum_bdm70 (struct pt_packet_decoder*) ;

__attribute__((used)) static int check_erratum_bdm70(const uint8_t *pos,
          const struct pt_config *config)
{
 struct pt_packet_decoder decoder;
 int errcode;

 if (!pos || !config)
  return -pte_internal;

 errcode = pt_pkt_decoder_init(&decoder, config);
 if (errcode < 0)
  return errcode;

 errcode = pt_pkt_sync_set(&decoder, (uint64_t) (pos - config->begin));
 if (errcode >= 0)
  errcode = scan_for_erratum_bdm70(&decoder);

 pt_pkt_decoder_fini(&decoder);
 return errcode;
}
