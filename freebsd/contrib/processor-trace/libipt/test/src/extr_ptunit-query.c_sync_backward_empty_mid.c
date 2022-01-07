
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;


 int pt_enc_get_offset (struct pt_encoder*,int *) ;
 int pt_encode_mode_exec (struct pt_encoder*,int ) ;
 int pt_encode_psb (struct pt_encoder*) ;
 int pt_encode_psbend (struct pt_encoder*) ;
 int pt_qry_get_sync_offset (struct pt_query_decoder*,int *) ;
 int pt_qry_sync_backward (struct pt_query_decoder*,int *) ;
 int pte_eos ;
 int ptem_64bit ;
 int ptu_int_eq (int,int ) ;
 int ptu_int_ge (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,int ) ;

__attribute__((used)) static struct ptunit_result
sync_backward_empty_mid(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_encoder *encoder = &dfix->encoder;
 uint64_t sync[3], offset, ip;
 int errcode;







 errcode = pt_enc_get_offset(encoder, &sync[0]);
 ptu_int_ge(errcode, 0);

 pt_encode_psb(encoder);
 pt_encode_mode_exec(encoder, ptem_64bit);
 pt_encode_psbend(encoder);

 errcode = pt_enc_get_offset(encoder, &sync[1]);
 ptu_int_ge(errcode, 0);

 pt_encode_psb(encoder);
 pt_encode_psbend(encoder);

 errcode = pt_enc_get_offset(encoder, &sync[2]);
 ptu_int_ge(errcode, 0);

 pt_encode_psb(encoder);
 pt_encode_mode_exec(encoder, ptem_64bit);
 pt_encode_psbend(encoder);





 errcode = pt_qry_sync_backward(decoder, &ip);
 ptu_int_ge(errcode, 0);

 errcode = pt_qry_get_sync_offset(decoder, &offset);
 ptu_int_eq(errcode, 0);
 ptu_uint_eq(offset, sync[2]);

 errcode = pt_qry_sync_backward(decoder, &ip);
 ptu_int_ge(errcode, 0);

 errcode = pt_qry_get_sync_offset(decoder, &offset);
 ptu_int_eq(errcode, 0);
 ptu_uint_eq(offset, sync[0]);

 errcode = pt_qry_sync_backward(decoder, &ip);
 ptu_int_eq(errcode, -pte_eos);

 return ptu_passed();
}
