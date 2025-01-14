
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_config {int end; } ;
struct pt_query_decoder {int pos; struct pt_config config; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;


 int pt_qry_cond_branch (struct pt_query_decoder*,int*) ;
 int pte_eos ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result cond_empty(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_config *config = &decoder->config;
 int errcode, tnt = 0xbc, taken = tnt;

 decoder->pos = config->end;

 errcode = pt_qry_cond_branch(decoder, &taken);
 ptu_int_eq(errcode, -pte_eos);
 ptu_int_eq(taken, tnt);

 return ptu_passed();
}
