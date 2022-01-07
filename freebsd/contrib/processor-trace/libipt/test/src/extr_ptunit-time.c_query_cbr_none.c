
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct time_fixture {int time; } ;
struct ptunit_result {int dummy; } ;


 int pt_time_query_cbr (int *,int *) ;
 int pte_no_cbr ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result query_cbr_none(struct time_fixture *tfix)
{
 uint32_t cbr;
 int errcode;

 errcode = pt_time_query_cbr(&cbr, &tfix->time);
 ptu_int_eq(errcode, -pte_no_cbr);

 return ptu_passed();
}
