
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ibv_context_1_0 {int real_context; } ;
struct TYPE_7__ {TYPE_1__* srq; TYPE_4__* qp; TYPE_2__* cq; } ;
struct ibv_async_event {int event_type; TYPE_3__ element; } ;
struct TYPE_8__ {struct TYPE_8__* qp_context; } ;
struct TYPE_6__ {struct TYPE_6__* cq_context; } ;
struct TYPE_5__ {struct TYPE_5__* srq_context; } ;
 int ibv_get_async_event (int ,struct ibv_async_event*) ;

int __ibv_get_async_event_1_0(struct ibv_context_1_0 *context,
         struct ibv_async_event *event)
{
 int ret;

 ret = ibv_get_async_event(context->real_context, event);
 if (ret)
  return ret;

 switch (event->event_type) {
 case 137:
  event->element.cq = event->element.cq->cq_context;
  break;

 case 133:
 case 131:
 case 134:
 case 138:
 case 130:
 case 136:
 case 135:
 case 132:
  event->element.qp = event->element.qp->qp_context;
  break;

 case 129:
 case 128:
  event->element.srq = event->element.srq->srq_context;
  break;

 default:
  break;
 }

 return ret;
}
