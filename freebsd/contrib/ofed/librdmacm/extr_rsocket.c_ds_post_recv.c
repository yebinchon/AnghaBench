
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rsocket {scalar_t__ rbuf_size; } ;
struct ibv_sge {int length; int lkey; scalar_t__ addr; } ;
struct ibv_recv_wr {int num_sge; struct ibv_sge* sg_list; int * next; int wr_id; } ;
struct ibv_grh {int dummy; } ;
struct ds_qp {TYPE_2__* cm_id; TYPE_1__* rmr; scalar_t__ rbuf; } ;
struct TYPE_4__ {int qp; } ;
struct TYPE_3__ {int lkey; } ;


 int RS_SNDLOWAT ;
 int ibv_post_recv (int ,struct ibv_recv_wr*,struct ibv_recv_wr**) ;
 int rdma_seterrno (int ) ;
 int rs_recv_wr_id (scalar_t__) ;

__attribute__((used)) static inline int ds_post_recv(struct rsocket *rs, struct ds_qp *qp, uint32_t offset)
{
 struct ibv_recv_wr wr, *bad;
 struct ibv_sge sge[2];

 sge[0].addr = (uintptr_t) qp->rbuf + rs->rbuf_size;
 sge[0].length = sizeof(struct ibv_grh);
 sge[0].lkey = qp->rmr->lkey;
 sge[1].addr = (uintptr_t) qp->rbuf + offset;
 sge[1].length = RS_SNDLOWAT;
 sge[1].lkey = qp->rmr->lkey;

 wr.wr_id = rs_recv_wr_id(offset);
 wr.next = ((void*)0);
 wr.sg_list = sge;
 wr.num_sge = 2;

 return rdma_seterrno(ibv_post_recv(qp->cm_id->qp, &wr, &bad));
}
