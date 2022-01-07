
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;


 int pt_dfix_bad_ip ;
 int pt_encode_tip (struct pt_encoder*,int ,int ) ;
 int pt_encode_tnt_8 (struct pt_encoder*,int ,int) ;
 int pt_ipc_sext_48 ;
 int pt_qry_indirect_branch (struct pt_query_decoder*,int *) ;
 int pte_bad_query ;
 int ptu_check (int ,struct pt_query_decoder*) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_sync_decoder ;
 int ptu_uint_eq (int ,int ) ;

__attribute__((used)) static struct ptunit_result
indir_skip_tnt_fail(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_encoder *encoder = &dfix->encoder;
 uint64_t ip = pt_dfix_bad_ip, addr = ip;
 int errcode;

 pt_encode_tnt_8(encoder, 0, 1);
 pt_encode_tnt_8(encoder, 0, 1);
 pt_encode_tip(encoder, 0, pt_ipc_sext_48);

 ptu_check(ptu_sync_decoder, decoder);

 errcode = pt_qry_indirect_branch(decoder, &addr);
 ptu_int_eq(errcode, -pte_bad_query);
 ptu_uint_eq(addr, ip);

 return ptu_passed();
}
