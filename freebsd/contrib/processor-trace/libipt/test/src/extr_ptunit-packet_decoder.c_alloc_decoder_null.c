
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_packet_decoder {int dummy; } ;


 struct pt_packet_decoder* pt_pkt_alloc_decoder (int *) ;
 int ptu_null (struct pt_packet_decoder*) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result alloc_decoder_null(void)
{
 struct pt_packet_decoder *decoder;

 decoder = pt_pkt_alloc_decoder(((void*)0));
 ptu_null(decoder);

 return ptu_passed();
}
