
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct pt_encoder {int * pos; } ;
struct pt_query_decoder {int pos; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;


 int pt_encode_tip (struct pt_encoder*,int ,int ) ;
 int pt_encode_tnt_8 (struct pt_encoder*,int ,int) ;
 int pt_ipc_sext_48 ;
 int pt_qry_cond_branch (struct pt_query_decoder*,int*) ;
 int pte_bad_query ;
 int ptu_check (int ,struct pt_query_decoder*) ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr_eq (int ,int const*) ;
 int ptu_sync_decoder ;

__attribute__((used)) static struct ptunit_result cond_skip_tip_fail(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_encoder *encoder = &dfix->encoder;
 int errcode, tnt = 0xbc, taken = tnt;
 const uint8_t *pos;

 pos = encoder->pos;
 pt_encode_tip(encoder, 0, pt_ipc_sext_48);
 pt_encode_tnt_8(encoder, 0, 1);

 ptu_check(ptu_sync_decoder, decoder);

 errcode = pt_qry_cond_branch(decoder, &taken);
 ptu_int_eq(errcode, -pte_bad_query);
 ptu_ptr_eq(decoder->pos, pos);
 ptu_int_eq(taken, tnt);

 return ptu_passed();
}
