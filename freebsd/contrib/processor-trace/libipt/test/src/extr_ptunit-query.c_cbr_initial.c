
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ptunit_result {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;


 int pt_qry_core_bus_ratio (struct pt_query_decoder*,int *) ;
 int pte_no_cbr ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result cbr_initial(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 uint32_t cbr;
 int errcode;

 errcode = pt_qry_core_bus_ratio(decoder, &cbr);
 ptu_int_eq(errcode, -pte_no_cbr);

 return ptu_passed();
}
