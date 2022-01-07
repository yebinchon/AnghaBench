
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct evq_fixture {int evq; } ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 int pt_evq_empty (int *,int) ;
 int pt_evq_pending (int *,int) ;
 int ptu_int_eq (int,int ) ;
 int ptu_int_gt (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result evq_pending(struct evq_fixture *efix,
     enum pt_event_binding evb)
{
 int status;

 status = pt_evq_empty(&efix->evq, evb);
 ptu_int_eq(status, 0);

 status = pt_evq_pending(&efix->evq, evb);
 ptu_int_gt(status, 0);

 return ptu_passed();
}
