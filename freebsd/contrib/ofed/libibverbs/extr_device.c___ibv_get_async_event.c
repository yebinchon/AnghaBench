
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_kern_async_event {int element; int event_type; } ;
struct TYPE_4__ {int (* async_event ) (struct ibv_async_event*) ;} ;
struct ibv_context {TYPE_2__ ops; int async_fd; } ;
struct TYPE_3__ {int port_num; void* wq; void* srq; void* qp; void* cq; } ;
struct ibv_async_event {TYPE_1__ element; int event_type; } ;
 int read (int ,struct ibv_kern_async_event*,int) ;
 int stub1 (struct ibv_async_event*) ;

int __ibv_get_async_event(struct ibv_context *context,
     struct ibv_async_event *event)
{
 struct ibv_kern_async_event ev;

 if (read(context->async_fd, &ev, sizeof ev) != sizeof ev)
  return -1;

 event->event_type = ev.event_type;

 switch (event->event_type) {
 case 138:
  event->element.cq = (void *) (uintptr_t) ev.element;
  break;

 case 134:
 case 132:
 case 135:
 case 139:
 case 131:
 case 137:
 case 136:
 case 133:
  event->element.qp = (void *) (uintptr_t) ev.element;
  break;

 case 130:
 case 129:
  event->element.srq = (void *) (uintptr_t) ev.element;
  break;

 case 128:
  event->element.wq = (void *) (uintptr_t) ev.element;
  break;
 default:
  event->element.port_num = ev.element;
  break;
 }

 if (context->ops.async_event)
  context->ops.async_event(event);

 return 0;
}
