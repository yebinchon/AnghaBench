
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;


 int pt_encode_tnt_8 (struct pt_encoder*,int,int) ;
 int pt_qry_cond_branch (struct pt_query_decoder*,int*) ;
 int pte_eos ;
 int pts_eos ;
 int ptu_check (int ,struct pt_query_decoder*) ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_sync_decoder ;

__attribute__((used)) static struct ptunit_result cond(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_encoder *encoder = &dfix->encoder;
 int errcode, tnt = 0xbc, taken = tnt;

 pt_encode_tnt_8(encoder, 0x02, 3);

 ptu_check(ptu_sync_decoder, decoder);

 errcode = pt_qry_cond_branch(decoder, &taken);
 ptu_int_eq(errcode, 0);
 ptu_int_eq(taken, 0);

 taken = tnt;
 errcode = pt_qry_cond_branch(decoder, &taken);
 ptu_int_eq(errcode, 0);
 ptu_int_eq(taken, 1);

 taken = tnt;
 errcode = pt_qry_cond_branch(decoder, &taken);
 ptu_int_eq(errcode, pts_eos);
 ptu_int_eq(taken, 0);

 taken = tnt;
 errcode = pt_qry_cond_branch(decoder, &taken);
 ptu_int_eq(errcode, -pte_eos);
 ptu_int_eq(taken, tnt);

 return ptu_passed();
}
