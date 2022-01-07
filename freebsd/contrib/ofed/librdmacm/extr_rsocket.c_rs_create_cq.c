
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rsocket {int fd_flags; scalar_t__ rq_size; scalar_t__ sq_size; } ;
struct rdma_cm_id {TYPE_1__* recv_cq_channel; int * recv_cq; int * send_cq; TYPE_1__* send_cq_channel; int verbs; } ;
struct TYPE_4__ {int fd; } ;


 int F_SETFL ;
 int O_NONBLOCK ;
 scalar_t__ fcntl (int ,int ,int) ;
 TYPE_1__* ibv_create_comp_channel (int ) ;
 int * ibv_create_cq (int ,scalar_t__,struct rdma_cm_id*,TYPE_1__*,int ) ;
 int ibv_destroy_comp_channel (TYPE_1__*) ;
 int ibv_destroy_cq (int *) ;
 int ibv_req_notify_cq (int *,int ) ;

__attribute__((used)) static int rs_create_cq(struct rsocket *rs, struct rdma_cm_id *cm_id)
{
 cm_id->recv_cq_channel = ibv_create_comp_channel(cm_id->verbs);
 if (!cm_id->recv_cq_channel)
  return -1;

 cm_id->recv_cq = ibv_create_cq(cm_id->verbs, rs->sq_size + rs->rq_size,
           cm_id, cm_id->recv_cq_channel, 0);
 if (!cm_id->recv_cq)
  goto err1;

 if (rs->fd_flags & O_NONBLOCK) {
  if (fcntl(cm_id->recv_cq_channel->fd, F_SETFL, O_NONBLOCK))
   goto err2;
 }

 ibv_req_notify_cq(cm_id->recv_cq, 0);
 cm_id->send_cq_channel = cm_id->recv_cq_channel;
 cm_id->send_cq = cm_id->recv_cq;
 return 0;

err2:
 ibv_destroy_cq(cm_id->recv_cq);
 cm_id->recv_cq = ((void*)0);
err1:
 ibv_destroy_comp_channel(cm_id->recv_cq_channel);
 cm_id->recv_cq_channel = ((void*)0);
 return -1;
}
