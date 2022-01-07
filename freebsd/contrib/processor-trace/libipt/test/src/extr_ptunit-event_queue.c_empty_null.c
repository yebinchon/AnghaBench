
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 int pt_evq_empty (int *,int) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result empty_null(enum pt_event_binding evb)
{
 int errcode;

 errcode = pt_evq_empty(((void*)0), evb);
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
