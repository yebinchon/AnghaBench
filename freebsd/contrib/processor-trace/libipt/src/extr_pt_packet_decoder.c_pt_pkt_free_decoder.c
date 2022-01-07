
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_packet_decoder {int dummy; } ;


 int free (struct pt_packet_decoder*) ;
 int pt_pkt_decoder_fini (struct pt_packet_decoder*) ;

void pt_pkt_free_decoder(struct pt_packet_decoder *decoder)
{
 pt_pkt_decoder_fini(decoder);
 free(decoder);
}
