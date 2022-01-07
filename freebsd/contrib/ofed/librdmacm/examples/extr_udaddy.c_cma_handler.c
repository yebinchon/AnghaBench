
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {int context; } ;
struct rdma_cm_event {int event; int status; } ;
 int addr_handler (int ) ;
 int connect_error () ;
 int connect_handler (struct rdma_cm_id*) ;
 int printf (char*,char*,int) ;
 char* rdma_event_str (int) ;
 int resolved_handler (int ,struct rdma_cm_event*) ;
 int route_handler (int ) ;

__attribute__((used)) static int cma_handler(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
{
 int ret = 0;

 switch (event->event) {
 case 136:
  ret = addr_handler(cma_id->context);
  break;
 case 129:
  ret = route_handler(cma_id->context);
  break;
 case 134:
  ret = connect_handler(cma_id);
  break;
 case 132:
  ret = resolved_handler(cma_id->context, event);
  break;
 case 137:
 case 130:
 case 135:
 case 128:
 case 131:
  printf("udaddy: event: %s, error: %d\n",
         rdma_event_str(event->event), event->status);
  connect_error();
  ret = event->status;
  break;
 case 133:

  break;
 default:
  break;
 }
 return ret;
}
