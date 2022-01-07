
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsocket {scalar_t__ unack_cqe; scalar_t__ sq_size; scalar_t__ rq_size; int state; scalar_t__ cq_armed; TYPE_1__* cm_id; } ;
struct ibv_cq {int dummy; } ;
struct TYPE_2__ {int recv_cq; int recv_cq_channel; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int ibv_ack_cq_events (int ,scalar_t__) ;
 int ibv_get_cq_event (int ,struct ibv_cq**,void**) ;
 int rs_error ;

__attribute__((used)) static int rs_get_cq_event(struct rsocket *rs)
{
 struct ibv_cq *cq;
 void *context;
 int ret;

 if (!rs->cq_armed)
  return 0;

 ret = ibv_get_cq_event(rs->cm_id->recv_cq_channel, &cq, &context);
 if (!ret) {
  if (++rs->unack_cqe >= rs->sq_size + rs->rq_size) {
   ibv_ack_cq_events(rs->cm_id->recv_cq, rs->unack_cqe);
   rs->unack_cqe = 0;
  }
  rs->cq_armed = 0;
 } else if (!(errno == EAGAIN || errno == EINTR)) {
  rs->state = rs_error;
 }

 return ret;
}
