
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rsocket {scalar_t__ cq_armed; int epfd; } ;
struct ibv_cq {int dummy; } ;
struct TYPE_3__ {struct ds_qp* ptr; } ;
struct epoll_event {TYPE_1__ data; } ;
struct ds_qp {scalar_t__ cq_armed; TYPE_2__* cm_id; } ;
struct TYPE_4__ {int recv_cq; int recv_cq_channel; } ;


 int epoll_wait (int ,struct epoll_event*,int,int) ;
 int ibv_ack_cq_events (int ,int) ;
 int ibv_get_cq_event (int ,struct ibv_cq**,void**) ;

__attribute__((used)) static int ds_get_cq_event(struct rsocket *rs)
{
 struct epoll_event event;
 struct ds_qp *qp;
 struct ibv_cq *cq;
 void *context;
 int ret;

 if (!rs->cq_armed)
  return 0;

 ret = epoll_wait(rs->epfd, &event, 1, -1);
 if (ret <= 0)
  return ret;

 qp = event.data.ptr;
 ret = ibv_get_cq_event(qp->cm_id->recv_cq_channel, &cq, &context);
 if (!ret) {
  ibv_ack_cq_events(qp->cm_id->recv_cq, 1);
  qp->cq_armed = 0;
  rs->cq_armed = 0;
 }

 return ret;
}
