
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_event {int dummy; } ;
struct evq_fixture {int evq; } ;
typedef enum pt_event_type { ____Placeholder_pt_event_type } pt_event_type ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 int evq_enqueue_other ;
 struct pt_event* pt_evq_find (int *,int,int) ;
 int ptu_null (struct pt_event*) ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct evq_fixture*,int,int,size_t) ;

__attribute__((used)) static struct ptunit_result find_none_evt(struct evq_fixture *efix,
       enum pt_event_binding evb,
       enum pt_event_type evt,
       size_t num)
{
 struct pt_event *ev;

 ptu_test(evq_enqueue_other, efix, evb, evt, num);

 ev = pt_evq_find(&efix->evq, evb, evt);
 ptu_null(ev);

 return ptu_passed();
}
