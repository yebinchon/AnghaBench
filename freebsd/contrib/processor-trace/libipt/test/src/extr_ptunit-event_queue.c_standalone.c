
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_event {int status_update; int ip_suppressed; } ;
struct evq_fixture {int evq; } ;


 struct pt_event* pt_evq_standalone (int *) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (struct pt_event*) ;
 int ptu_uint_eq (int ,unsigned long) ;

__attribute__((used)) static struct ptunit_result standalone(struct evq_fixture *efix)
{
 struct pt_event *ev;

 ev = pt_evq_standalone(&efix->evq);
 ptu_ptr(ev);
 ptu_uint_eq(ev->ip_suppressed, 0ul);
 ptu_uint_eq(ev->status_update, 0ul);

 return ptu_passed();
}
