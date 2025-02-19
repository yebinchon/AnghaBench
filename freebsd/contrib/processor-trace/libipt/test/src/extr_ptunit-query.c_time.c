
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_2__ {int have_tsc; int tsc; } ;
struct pt_query_decoder {TYPE_1__ last_time; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;


 int pt_qry_time (struct pt_query_decoder*,int*,int *,int *) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result time(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 uint64_t tsc, exp;
 int errcode;

 exp = 0x11223344556677ull;

 decoder->last_time.have_tsc = 1;
 decoder->last_time.tsc = exp;

 errcode = pt_qry_time(decoder, &tsc, ((void*)0), ((void*)0));
 ptu_int_eq(errcode, 0);
 ptu_uint_eq(tsc, exp);

 return ptu_passed();
}
