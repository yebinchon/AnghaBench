
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_id {struct node* context; } ;
struct rdma_cm_event {int event; int status; } ;
struct node {int error; int id; int retries; } ;
struct list_head {struct rdma_cm_id* id; } ;
struct TYPE_2__ {int ai_dst_addr; int ai_src_addr; } ;


 int INIT_LIST (struct list_head*) ;
 int addr_handler (struct node*) ;
 int conn_handler (struct node*) ;
 int disc_handler (struct node*) ;
 int disc_work ;
 int list_add_tail (int *,struct list_head*) ;
 struct list_head* malloc (int) ;
 int perror (char*) ;
 int printf (char*,...) ;
 TYPE_1__* rai ;
 int rdma_ack_cm_event (struct rdma_cm_event*) ;
 int rdma_destroy_id (struct rdma_cm_id*) ;
 int rdma_disconnect (struct rdma_cm_id*) ;
 char* rdma_event_str (int) ;
 int rdma_reject (struct rdma_cm_id*,int *,int ) ;
 int rdma_resolve_addr (int ,int ,int ,int ) ;
 int rdma_resolve_route (int ,int ) ;
 int req_work ;
 int route_handler (struct node*) ;
 int timeout ;

__attribute__((used)) static void cma_handler(struct rdma_cm_id *id, struct rdma_cm_event *event)
{
 struct node *n = id->context;
 struct list_head *request;

 switch (event->event) {
 case 137:
  addr_handler(n);
  break;
 case 129:
  route_handler(n);
  break;
 case 135:
  request = malloc(sizeof *request);
  if (!request) {
   perror("out of memory accepting connect request");
   rdma_reject(id, ((void*)0), 0);
   rdma_destroy_id(id);
  } else {
   INIT_LIST(request);
   request->id = id;
   list_add_tail(&req_work, request);
  }
  break;
 case 132:
  if (n)
   conn_handler(n);
  break;
 case 138:
  if (n->retries--) {
   if (!rdma_resolve_addr(n->id, rai->ai_src_addr,
            rai->ai_dst_addr, timeout))
    break;
  }
  printf("RDMA_CM_EVENT_ADDR_ERROR, error: %d\n", event->status);
  addr_handler(n);
  n->error = 1;
  break;
 case 130:
  if (n->retries--) {
   if (!rdma_resolve_route(n->id, timeout))
    break;
  }
  printf("RDMA_CM_EVENT_ROUTE_ERROR, error: %d\n", event->status);
  route_handler(n);
  n->error = 1;
  break;
 case 136:
 case 128:
 case 131:
  printf("event: %s, error: %d\n",
         rdma_event_str(event->event), event->status);
  conn_handler(n);
  n->error = 1;
  break;
 case 133:
  if (!n) {
   request = malloc(sizeof *request);
   if (!request) {
    perror("out of memory queueing disconnect request, handling synchronously");
    rdma_disconnect(id);
    rdma_destroy_id(id);
   } else {
    INIT_LIST(request);
    request->id = id;
    list_add_tail(&disc_work, request);
   }
  } else
   disc_handler(n);
  break;
 case 134:

  break;
 default:
  break;
 }
 rdma_ack_cm_event(event);
}
