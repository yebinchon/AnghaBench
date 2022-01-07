
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_cq {int dummy; } ;
struct TYPE_2__ {struct ibv_cq* recv_cq; int channel; } ;


 TYPE_1__ ctx ;
 int fprintf (int ,char*,...) ;
 scalar_t__ ibv_get_cq_event (int ,struct ibv_cq**,void**) ;
 scalar_t__ ibv_req_notify_cq (struct ibv_cq*,int ) ;
 int stderr ;

__attribute__((used)) static int get_cq_event(void)
{
 struct ibv_cq *ev_cq;
 void *ev_ctx;

 if (ibv_get_cq_event(ctx.channel, &ev_cq, &ev_ctx)) {
  fprintf(stderr, "Failed to get cq_event\n");
  return 1;
 }

 if (ev_cq != ctx.recv_cq) {
  fprintf(stderr, "CQ event for unknown CQ %p\n", ev_cq);
  return 1;
 }

 if (ibv_req_notify_cq(ctx.recv_cq, 0)) {
  fprintf(stderr, "Couldn't request CQ notification\n");
  return 1;
 }

 return 0;
}
