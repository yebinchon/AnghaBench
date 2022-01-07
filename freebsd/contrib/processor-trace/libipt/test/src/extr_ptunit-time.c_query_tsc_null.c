
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct time_fixture {int time; } ;
struct ptunit_result {int dummy; } ;


 int pt_time_query_tsc (int *,int *,int *,int *) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result query_tsc_null(struct time_fixture *tfix)
{
 uint64_t tsc;
 int errcode;

 errcode = pt_time_query_tsc(((void*)0), ((void*)0), ((void*)0), &tfix->time);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_time_query_tsc(&tsc, ((void*)0), ((void*)0), ((void*)0));
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
