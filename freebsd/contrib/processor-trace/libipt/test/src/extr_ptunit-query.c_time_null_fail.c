
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;


 int pt_qry_time (struct pt_query_decoder*,int *,int *,int *) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result time_null_fail(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 uint64_t tsc;
 int errcode;

 errcode = pt_qry_time(((void*)0), ((void*)0), ((void*)0), ((void*)0));
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_qry_time(decoder, ((void*)0), ((void*)0), ((void*)0));
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_qry_time(((void*)0), &tsc, ((void*)0), ((void*)0));
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
