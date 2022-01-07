
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_event {int dummy; } ;
struct evq_fixture {int evq; } ;
typedef enum pt_event_type { ____Placeholder_pt_event_type } pt_event_type ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 struct pt_event* pt_evq_find (int *,int,int) ;
 int ptu_null (struct pt_event*) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result find_empty(struct evq_fixture *efix,
           enum pt_event_binding evb,
           enum pt_event_type evt)
{
 struct pt_event *ev;

 ev = pt_evq_find(&efix->evq, evb, evt);
 ptu_null(ev);

 return ptu_passed();
}
