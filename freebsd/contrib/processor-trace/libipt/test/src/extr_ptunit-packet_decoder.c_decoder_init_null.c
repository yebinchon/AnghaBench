
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_packet_decoder {int dummy; } ;
struct pt_config {int dummy; } ;


 int pt_pkt_decoder_init (struct pt_packet_decoder*,struct pt_config*) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result decoder_init_null(void)
{
 struct pt_packet_decoder decoder;
 struct pt_config config;
 int errcode;

 errcode = pt_pkt_decoder_init(((void*)0), &config);
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_pkt_decoder_init(&decoder, ((void*)0));
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
