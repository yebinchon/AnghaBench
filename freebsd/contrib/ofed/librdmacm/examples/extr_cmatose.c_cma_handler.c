
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_id {scalar_t__ context; } ;
struct rdma_cm_event {int event; int status; } ;
struct cmatest_node {int connected; } ;
struct TYPE_2__ {int disconnects_left; int connects_left; } ;
 int addr_handler (scalar_t__) ;
 int connect_error () ;
 int connect_handler (struct rdma_cm_id*) ;
 int printf (char*,char*,int) ;
 int rdma_disconnect (struct rdma_cm_id*) ;
 char* rdma_event_str (int) ;
 int route_handler (scalar_t__) ;
 TYPE_1__ test ;

__attribute__((used)) static int cma_handler(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
{
 int ret = 0;

 switch (event->event) {
 case 137:
  ret = addr_handler(cma_id->context);
  break;
 case 129:
  ret = route_handler(cma_id->context);
  break;
 case 135:
  ret = connect_handler(cma_id);
  break;
 case 132:
  ((struct cmatest_node *) cma_id->context)->connected = 1;
  test.connects_left--;
  test.disconnects_left++;
  break;
 case 138:
 case 130:
 case 136:
 case 128:
 case 131:
  printf("cmatose: event: %s, error: %d\n",
         rdma_event_str(event->event), event->status);
  connect_error();
  ret = event->status;
  break;
 case 133:
  rdma_disconnect(cma_id);
  test.disconnects_left--;
  break;
 case 134:

  break;
 default:
  break;
 }
 return ret;
}
