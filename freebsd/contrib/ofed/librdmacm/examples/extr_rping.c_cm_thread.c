
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rping_cb {int cm_channel; } ;
struct rdma_cm_event {int id; } ;


 int exit (int) ;
 int perror (char*) ;
 int rdma_ack_cm_event (struct rdma_cm_event*) ;
 int rdma_get_cm_event (int ,struct rdma_cm_event**) ;
 int rping_cma_event_handler (int ,struct rdma_cm_event*) ;

__attribute__((used)) static void *cm_thread(void *arg)
{
 struct rping_cb *cb = arg;
 struct rdma_cm_event *event;
 int ret;

 while (1) {
  ret = rdma_get_cm_event(cb->cm_channel, &event);
  if (ret) {
   perror("rdma_get_cm_event");
   exit(ret);
  }
  ret = rping_cma_event_handler(event->id, event);
  rdma_ack_cm_event(event);
  if (ret)
   exit(ret);
 }
}
