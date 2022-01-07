
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int addr; } ;
struct ds_qp {TYPE_4__* cm_id; TYPE_2__* rs; TYPE_1__ dest; struct ds_qp* rbuf; scalar_t__ rmr; scalar_t__ smr; } ;
struct TYPE_9__ {TYPE_3__* recv_cq_channel; scalar_t__ qp; } ;
struct TYPE_8__ {int fd; } ;
struct TYPE_7__ {int epfd; int dest_map; } ;


 int EPOLL_CTL_DEL ;
 int ds_compare_addr ;
 int epoll_ctl (int ,int ,int ,int *) ;
 int free (struct ds_qp*) ;
 int rdma_dereg_mr (scalar_t__) ;
 int rdma_destroy_id (TYPE_4__*) ;
 int rdma_destroy_qp (TYPE_4__*) ;
 int tdelete (int *,int *,int ) ;

__attribute__((used)) static void ds_free_qp(struct ds_qp *qp)
{
 if (qp->smr)
  rdma_dereg_mr(qp->smr);

 if (qp->rbuf) {
  if (qp->rmr)
   rdma_dereg_mr(qp->rmr);
  free(qp->rbuf);
 }

 if (qp->cm_id) {
  if (qp->cm_id->qp) {
   tdelete(&qp->dest.addr, &qp->rs->dest_map, ds_compare_addr);
   epoll_ctl(qp->rs->epfd, EPOLL_CTL_DEL,
      qp->cm_id->recv_cq_channel->fd, ((void*)0));
   rdma_destroy_qp(qp->cm_id);
  }
  rdma_destroy_id(qp->cm_id);
 }

 free(qp);
}
