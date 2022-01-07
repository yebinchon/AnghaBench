
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct evq_fixture {int dummy; } ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 int evb_max ;
 int evq_empty ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct evq_fixture*,int) ;

__attribute__((used)) static struct ptunit_result evq_others_empty(struct evq_fixture *efix,
          enum pt_event_binding evb)
{
 int other;

 for (other = 0; other < evb_max; ++other) {
  enum pt_event_binding ob;

  ob = (enum pt_event_binding) other;
  if (ob != evb)
   ptu_test(evq_empty, efix, ob);
 }

 return ptu_passed();
}
