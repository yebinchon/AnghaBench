
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct ptu_decoder_fixture {int encoder; int decoder; } ;


 int pt_encoder_fini (int *) ;
 int pt_qry_decoder_fini (int *) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result ptu_dfix_fini(struct ptu_decoder_fixture *dfix)
{
 pt_qry_decoder_fini(&dfix->decoder);
 pt_encoder_fini(&dfix->encoder);

 return ptu_passed();
}
