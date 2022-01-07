
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_event {int dummy; } ;
struct evq_fixture {int evq; } ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 struct pt_event* pt_evq_dequeue (int *,int) ;
 int ptu_null (struct pt_event*) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result dequeue_empty(struct evq_fixture *efix,
       enum pt_event_binding evb)
{
 struct pt_event *ev;

 ev = pt_evq_dequeue(&efix->evq, evb);
 ptu_null(ev);

 return ptu_passed();
}
