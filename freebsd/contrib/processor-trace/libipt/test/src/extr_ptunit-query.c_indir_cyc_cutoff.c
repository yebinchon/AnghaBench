
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
 int pt_encode_cyc (struct pt_encoder*,int) ;
 int pt_encode_tip (struct pt_encoder*,int,int ) ;
 int pt_ipc_full ;
 int pt_qry_indirect_branch (struct pt_query_decoder*,int *) ;
 int pts_eos ;
 int ptu_check (int ,struct pt_query_decoder*,...) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_sync_decoder ;

__attribute__((used)) static struct ptunit_result indir_cyc_cutoff(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_encoder *encoder = &dfix->encoder;
 uint64_t ip;
 int errcode;

 pt_encode_tip(encoder, 0xa000ull, pt_ipc_full);
 pt_encode_cyc(encoder, 0xfff);

 ptu_check(cutoff, decoder, encoder);
 ptu_check(ptu_sync_decoder, decoder);

 errcode = pt_qry_indirect_branch(decoder, &ip);
 ptu_int_eq(errcode, pts_eos);

 return ptu_passed();
}
