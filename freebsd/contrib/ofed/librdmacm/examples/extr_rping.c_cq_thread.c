
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rping_cb {struct ibv_cq* cq; int channel; } ;
struct ibv_cq {int dummy; } ;


 int DEBUG_LOG (char*) ;
 int fprintf (int ,char*) ;
 int ibv_ack_cq_events (struct ibv_cq*,int) ;
 int ibv_get_cq_event (int ,struct ibv_cq**,void**) ;
 int ibv_req_notify_cq (struct ibv_cq*,int ) ;
 int pthread_exit (int *) ;
 int pthread_testcancel () ;
 int rping_cq_event_handler (struct rping_cb*) ;
 int stderr ;

__attribute__((used)) static void *cq_thread(void *arg)
{
 struct rping_cb *cb = arg;
 struct ibv_cq *ev_cq;
 void *ev_ctx;
 int ret;

 DEBUG_LOG("cq_thread started.\n");

 while (1) {
  pthread_testcancel();

  ret = ibv_get_cq_event(cb->channel, &ev_cq, &ev_ctx);
  if (ret) {
   fprintf(stderr, "Failed to get cq event!\n");
   pthread_exit(((void*)0));
  }
  if (ev_cq != cb->cq) {
   fprintf(stderr, "Unknown CQ!\n");
   pthread_exit(((void*)0));
  }
  ret = ibv_req_notify_cq(cb->cq, 0);
  if (ret) {
   fprintf(stderr, "Failed to set notify!\n");
   pthread_exit(((void*)0));
  }
  ret = rping_cq_event_handler(cb);
  ibv_ack_cq_events(cb->cq, 1);
  if (ret)
   pthread_exit(((void*)0));
 }
}
