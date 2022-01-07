
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;


 int cutoff ;
 int pt_encode_ovf (struct pt_encoder*) ;
 int pt_encode_psb (struct pt_encoder*) ;
 int pt_qry_sync_forward (struct pt_query_decoder*,int *) ;
 int pte_eos ;
 int ptu_check (int ,struct pt_query_decoder*,struct pt_encoder*) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result
sync_ovf_event_cutoff_fail(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_encoder *encoder = &dfix->encoder;
 uint64_t addr;
 int errcode;

 pt_encode_psb(encoder);
 pt_encode_ovf(encoder);

 ptu_check(cutoff, decoder, encoder);

 errcode = pt_qry_sync_forward(decoder, &addr);
 ptu_int_eq(errcode, -pte_eos);

 return ptu_passed();
}
