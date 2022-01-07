
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_2__ {int have_cbr; int cbr; } ;
struct pt_query_decoder {TYPE_1__ last_time; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;


 int pt_qry_core_bus_ratio (struct pt_query_decoder*,int *) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,int) ;

__attribute__((used)) static struct ptunit_result cbr(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 uint32_t cbr;
 int errcode;

 decoder->last_time.have_cbr = 1;
 decoder->last_time.cbr = 42;

 errcode = pt_qry_core_bus_ratio(decoder, &cbr);
 ptu_int_eq(errcode, 0);
 ptu_uint_eq(cbr, 42);

 return ptu_passed();
}
