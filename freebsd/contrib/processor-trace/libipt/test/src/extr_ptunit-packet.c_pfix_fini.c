
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct packet_fixture {int decoder; int encoder; } ;


 int pt_encoder_fini (int *) ;
 int pt_pkt_decoder_fini (int *) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result pfix_fini(struct packet_fixture *pfix)
{
 pt_encoder_fini(&pfix->encoder);
 pt_pkt_decoder_fini(&pfix->decoder);

 return ptu_passed();
}
