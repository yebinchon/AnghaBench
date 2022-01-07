
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rsocket {int opts; int rbuf_msg_index; int rq_size; TYPE_2__* cm_id; TYPE_1__* rmr; scalar_t__ rbuf_size; scalar_t__ rbuf; } ;
struct ibv_sge {int length; int lkey; scalar_t__ addr; } ;
struct ibv_recv_wr {int num_sge; struct ibv_sge* sg_list; void* wr_id; int * next; } ;
struct TYPE_4__ {int qp; } ;
struct TYPE_3__ {int lkey; } ;


 int RS_MSG_SIZE ;
 int RS_OPT_MSG_SEND ;
 int ibv_post_recv (int ,struct ibv_recv_wr*,struct ibv_recv_wr**) ;
 int rdma_seterrno (int ) ;
 void* rs_recv_wr_id (int) ;

__attribute__((used)) static inline int rs_post_recv(struct rsocket *rs)
{
 struct ibv_recv_wr wr, *bad;
 struct ibv_sge sge;

 wr.next = ((void*)0);
 if (!(rs->opts & RS_OPT_MSG_SEND)) {
  wr.wr_id = rs_recv_wr_id(0);
  wr.sg_list = ((void*)0);
  wr.num_sge = 0;
 } else {
  wr.wr_id = rs_recv_wr_id(rs->rbuf_msg_index);
  sge.addr = (uintptr_t) rs->rbuf + rs->rbuf_size +
      (rs->rbuf_msg_index * RS_MSG_SIZE);
  sge.length = RS_MSG_SIZE;
  sge.lkey = rs->rmr->lkey;

  wr.sg_list = &sge;
  wr.num_sge = 1;
  if(++rs->rbuf_msg_index == rs->rq_size)
   rs->rbuf_msg_index = 0;
 }

 return rdma_seterrno(ibv_post_recv(rs->cm_id->qp, &wr, &bad));
}
