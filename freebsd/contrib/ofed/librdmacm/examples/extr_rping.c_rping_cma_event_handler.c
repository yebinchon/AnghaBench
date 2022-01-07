
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rping_cb {int sem; void* state; int server; struct rdma_cm_id* child_cm_id; struct rdma_cm_id* cm_id; } ;
struct rdma_cm_id {struct rping_cb* context; } ;
struct rdma_cm_event {int event; int status; } ;


 void* ADDR_RESOLVED ;
 void* CONNECTED ;
 void* CONNECT_REQUEST ;
 int DEBUG_LOG (char*,...) ;
 void* DISCONNECTED ;
 void* ERROR ;
 void* ROUTE_RESOLVED ;
 int fprintf (int ,char*,...) ;
 int perror (char*) ;
 char* rdma_event_str (int) ;
 int rdma_resolve_route (struct rdma_cm_id*,int) ;
 int sem_post (int *) ;
 int stderr ;

__attribute__((used)) static int rping_cma_event_handler(struct rdma_cm_id *cma_id,
        struct rdma_cm_event *event)
{
 int ret = 0;
 struct rping_cb *cb = cma_id->context;

 DEBUG_LOG("cma_event type %s cma_id %p (%s)\n",
    rdma_event_str(event->event), cma_id,
    (cma_id == cb->cm_id) ? "parent" : "child");

 switch (event->event) {
 case 137:
  cb->state = ADDR_RESOLVED;
  ret = rdma_resolve_route(cma_id, 2000);
  if (ret) {
   cb->state = ERROR;
   perror("rdma_resolve_route");
   sem_post(&cb->sem);
  }
  break;

 case 129:
  cb->state = ROUTE_RESOLVED;
  sem_post(&cb->sem);
  break;

 case 135:
  cb->state = CONNECT_REQUEST;
  cb->child_cm_id = cma_id;
  DEBUG_LOG("child cma %p\n", cb->child_cm_id);
  sem_post(&cb->sem);
  break;

 case 132:
  DEBUG_LOG("ESTABLISHED\n");




  if (!cb->server) {
   cb->state = CONNECTED;
  }
  sem_post(&cb->sem);
  break;

 case 138:
 case 130:
 case 136:
 case 128:
 case 131:
  fprintf(stderr, "cma event %s, error %d\n",
   rdma_event_str(event->event), event->status);
  sem_post(&cb->sem);
  ret = -1;
  break;

 case 133:
  fprintf(stderr, "%s DISCONNECT EVENT...\n",
   cb->server ? "server" : "client");
  cb->state = DISCONNECTED;
  sem_post(&cb->sem);
  break;

 case 134:
  fprintf(stderr, "cma detected device removal!!!!\n");
  cb->state = ERROR;
  sem_post(&cb->sem);
  ret = -1;
  break;

 default:
  fprintf(stderr, "unhandled event: %s, ignoring\n",
   rdma_event_str(event->event));
  break;
 }

 return ret;
}
