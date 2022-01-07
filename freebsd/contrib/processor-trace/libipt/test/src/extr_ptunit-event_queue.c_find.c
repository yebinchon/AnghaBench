
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_event {int type; } ;
struct evq_fixture {int evq; } ;
typedef enum pt_event_type { ____Placeholder_pt_event_type } pt_event_type ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 int evq_enqueue_other ;
 struct pt_event* pt_evq_enqueue (int *,int) ;
 struct pt_event* pt_evq_find (int *,int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (struct pt_event*) ;
 int ptu_ptr_eq (struct pt_event*,struct pt_event*) ;
 int ptu_test (int ,struct evq_fixture*,int,int,size_t) ;

__attribute__((used)) static struct ptunit_result find(struct evq_fixture *efix,
     enum pt_event_binding evb,
     enum pt_event_type evt,
     size_t before, size_t after)
{
 struct pt_event *in, *out;

 ptu_test(evq_enqueue_other, efix, evb, evt, before);

 in = pt_evq_enqueue(&efix->evq, evb);
 ptu_ptr(in);

 in->type = evt;

 ptu_test(evq_enqueue_other, efix, evb, evt, after);

 out = pt_evq_find(&efix->evq, evb, evt);
 ptu_ptr_eq(out, in);

 return ptu_passed();
}
