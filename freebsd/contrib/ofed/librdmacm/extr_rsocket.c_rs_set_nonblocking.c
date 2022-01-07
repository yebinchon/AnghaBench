
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rsocket {scalar_t__ type; scalar_t__ state; struct ds_qp* qp_list; int epfd; TYPE_3__* cm_id; } ;
struct ds_qp {TYPE_5__* cm_id; } ;
struct TYPE_10__ {TYPE_4__* recv_cq_channel; } ;
struct TYPE_9__ {int fd; } ;
struct TYPE_8__ {TYPE_2__* channel; TYPE_1__* recv_cq_channel; } ;
struct TYPE_7__ {int fd; } ;
struct TYPE_6__ {int fd; } ;


 int F_SETFL ;
 scalar_t__ SOCK_STREAM ;
 struct ds_qp* ds_next_qp (struct ds_qp*) ;
 int fcntl (int ,int ,int) ;
 scalar_t__ rs_connected ;

__attribute__((used)) static int rs_set_nonblocking(struct rsocket *rs, int arg)
{
 struct ds_qp *qp;
 int ret = 0;

 if (rs->type == SOCK_STREAM) {
  if (rs->cm_id->recv_cq_channel)
   ret = fcntl(rs->cm_id->recv_cq_channel->fd, F_SETFL, arg);

  if (!ret && rs->state < rs_connected)
   ret = fcntl(rs->cm_id->channel->fd, F_SETFL, arg);
 } else {
  ret = fcntl(rs->epfd, F_SETFL, arg);
  if (!ret && rs->qp_list) {
   qp = rs->qp_list;
   do {
    ret = fcntl(qp->cm_id->recv_cq_channel->fd,
         F_SETFL, arg);
    qp = ds_next_qp(qp);
   } while (qp != rs->qp_list && !ret);
  }
 }

 return ret;
}
