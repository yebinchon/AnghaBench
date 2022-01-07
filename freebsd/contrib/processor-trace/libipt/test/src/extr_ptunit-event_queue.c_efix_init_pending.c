
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_event {int dummy; } ;
struct evq_fixture {int evq; } ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 int evb_max ;
 struct pt_event* pt_evq_enqueue (int *,int) ;
 int pt_evq_init (int *) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (struct pt_event*) ;

__attribute__((used)) static struct ptunit_result efix_init_pending(struct evq_fixture *efix)
{
 struct pt_event *ev;
 int evb;

 pt_evq_init(&efix->evq);

 for (evb = 0; evb < evb_max; ++evb) {
  ev = pt_evq_enqueue(&efix->evq, (enum pt_event_binding) evb);
  ptu_ptr(ev);
 }

 return ptu_passed();
}
