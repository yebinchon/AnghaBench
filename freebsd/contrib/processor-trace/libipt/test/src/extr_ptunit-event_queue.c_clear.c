
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct evq_fixture {int evq; } ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 int evq_empty ;
 int pt_evq_clear (int *,int) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct evq_fixture*,int) ;

__attribute__((used)) static struct ptunit_result clear(struct evq_fixture *efix,
      enum pt_event_binding evb)
{
 int errcode;

 errcode = pt_evq_clear(&efix->evq, evb);
 ptu_int_eq(errcode, 0);

 ptu_test(evq_empty, efix, evb);

 return ptu_passed();
}
