
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_event {int dummy; } ;
struct evq_fixture {int evq; } ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 int evq_empty ;
 int evq_max ;
 int evq_others_empty ;
 int evq_pending ;
 struct pt_event* pt_evq_dequeue (int *,int) ;
 struct pt_event* pt_evq_enqueue (int *,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (struct pt_event*) ;
 int ptu_ptr_eq (struct pt_event*,struct pt_event*) ;
 int ptu_test (int ,struct evq_fixture*,int) ;
 int ptu_uint_le (size_t,int) ;

__attribute__((used)) static struct ptunit_result enqueue_all_dequeue(struct evq_fixture *efix,
      enum pt_event_binding evb,
      size_t num)
{
 struct pt_event *in[evq_max], *out[evq_max];
 size_t idx;

 ptu_uint_le(num, evq_max - 2);

 for (idx = 0; idx < num; ++idx) {
  in[idx] = pt_evq_enqueue(&efix->evq, evb);
  ptu_ptr(in[idx]);
 }

 ptu_test(evq_pending, efix, evb);
 ptu_test(evq_others_empty, efix, evb);

 for (idx = 0; idx < num; ++idx) {
  out[idx] = pt_evq_dequeue(&efix->evq, evb);
  ptu_ptr_eq(out[idx], in[idx]);
 }

 ptu_test(evq_empty, efix, evb);

 return ptu_passed();
}
