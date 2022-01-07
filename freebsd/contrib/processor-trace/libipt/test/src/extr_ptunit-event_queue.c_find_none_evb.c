
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_event {int type; } ;
struct evq_fixture {int evq; } ;
typedef enum pt_event_type { ____Placeholder_pt_event_type } pt_event_type ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 size_t evb_max ;
 struct pt_event* pt_evq_enqueue (int *,int) ;
 struct pt_event* pt_evq_find (int *,int,int) ;
 int ptu_null (struct pt_event*) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (struct pt_event*) ;

__attribute__((used)) static struct ptunit_result find_none_evb(struct evq_fixture *efix,
       enum pt_event_binding evb,
       enum pt_event_type evt)
{
 struct pt_event *ev;
 size_t other;

 for (other = 0; other < evb_max; ++other) {
  enum pt_event_binding ob;

  ob = (enum pt_event_binding) other;
  if (ob != evb) {
   ev = pt_evq_enqueue(&efix->evq, ob);
   ptu_ptr(ev);

   ev->type = evt;
  }
 }

 ev = pt_evq_find(&efix->evq, evb, evt);
 ptu_null(ev);

 return ptu_passed();
}
