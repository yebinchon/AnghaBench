
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_id {int context; } ;
struct TYPE_2__ {int ud; } ;
struct rdma_cm_event {int event; int status; TYPE_1__ param; } ;
 int addr_handler (int ) ;
 int connect_error () ;
 int join_handler (int ,int *) ;
 int printf (char*,char*,int) ;
 char* rdma_event_str (int) ;

__attribute__((used)) static int cma_handler(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
{
 int ret = 0;

 switch (event->event) {
 case 132:
  ret = addr_handler(cma_id->context);
  break;
 case 129:
  ret = join_handler(cma_id->context, &event->param.ud);
  break;
 case 133:
 case 128:
 case 130:
  printf("mckey: event: %s, error: %d\n",
         rdma_event_str(event->event), event->status);
  connect_error();
  ret = event->status;
  break;
 case 131:

  break;
 default:
  break;
 }
 return ret;
}
