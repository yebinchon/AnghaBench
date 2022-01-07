
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_grh {int dummy; } ;
struct ds_qp {void* rmr; TYPE_1__* rs; int rbuf; int cm_id; void* smr; } ;
struct TYPE_2__ {scalar_t__ rbuf_size; scalar_t__ sbuf_size; int sbuf; } ;


 int ENOMEM ;
 int ERR (int ) ;
 int calloc (scalar_t__,int) ;
 void* rdma_reg_msgs (int ,int ,scalar_t__) ;

__attribute__((used)) static int ds_init_bufs(struct ds_qp *qp)
{
 qp->rbuf = calloc(qp->rs->rbuf_size + sizeof(struct ibv_grh), 1);
 if (!qp->rbuf)
  return ERR(ENOMEM);

 qp->smr = rdma_reg_msgs(qp->cm_id, qp->rs->sbuf, qp->rs->sbuf_size);
 if (!qp->smr)
  return -1;

 qp->rmr = rdma_reg_msgs(qp->cm_id, qp->rbuf, qp->rs->rbuf_size +
           sizeof(struct ibv_grh));
 if (!qp->rmr)
  return -1;

 return 0;
}
