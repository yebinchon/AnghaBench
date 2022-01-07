
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_srq_1_0 {scalar_t__ real_srq; } ;
struct ibv_qp_1_0 {scalar_t__ real_qp; } ;
struct ibv_cq_1_0 {scalar_t__ real_cq; } ;
struct TYPE_2__ {scalar_t__ srq; scalar_t__ qp; scalar_t__ cq; } ;
struct ibv_async_event {int event_type; TYPE_1__ element; } ;
 int ibv_ack_async_event (struct ibv_async_event*) ;

void __ibv_ack_async_event_1_0(struct ibv_async_event *event)
{
 struct ibv_async_event real_event = *event;

 switch (event->event_type) {
 case 137:
  real_event.element.cq =
   ((struct ibv_cq_1_0 *) event->element.cq)->real_cq;
  break;

 case 133:
 case 131:
 case 134:
 case 138:
 case 130:
 case 136:
 case 135:
 case 132:
  real_event.element.qp =
   ((struct ibv_qp_1_0 *) event->element.qp)->real_qp;
  break;

 case 129:
 case 128:
  real_event.element.srq =
   ((struct ibv_srq_1_0 *) event->element.srq)->real_srq;
  break;

 default:
  break;
 }

 ibv_ack_async_event(&real_event);
}
