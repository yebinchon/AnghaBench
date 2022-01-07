
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_config {int begin; } ;
struct pt_query_decoder {int pos; struct pt_config config; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;


 int pt_qry_cond_branch (struct pt_query_decoder*,int*) ;
 int pte_invalid ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr_eq (int ,int ) ;

__attribute__((used)) static struct ptunit_result cond_null(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_config *config = &decoder->config;
 int errcode, tnt = 0xbc, taken = tnt;

 errcode = pt_qry_cond_branch(((void*)0), &taken);
 ptu_int_eq(errcode, -pte_invalid);
 ptu_int_eq(taken, tnt);

 errcode = pt_qry_cond_branch(decoder, ((void*)0));
 ptu_int_eq(errcode, -pte_invalid);
 ptu_ptr_eq(decoder->pos, config->begin);

 return ptu_passed();
}
