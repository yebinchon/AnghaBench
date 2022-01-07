
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_event {int dummy; } ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 struct pt_event* pt_evq_enqueue (int *,int) ;
 int ptu_null (struct pt_event*) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result enqueue_null(enum pt_event_binding evb)
{
 struct pt_event *ev;

 ev = pt_evq_enqueue(((void*)0), evb);
 ptu_null(ev);

 return ptu_passed();
}
