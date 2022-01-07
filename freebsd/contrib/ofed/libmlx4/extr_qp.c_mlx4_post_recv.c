
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_wqe_data_seg {scalar_t__ addr; void* lkey; scalar_t__ byte_count; } ;
struct TYPE_2__ {int head; int wqe_cnt; int max_gs; int lock; int * wrid; } ;
struct mlx4_qp {TYPE_1__ rq; void** db; } ;
struct ibv_recv_wr {int num_sge; int wr_id; scalar_t__ sg_list; struct ibv_recv_wr* next; } ;
struct ibv_qp {int recv_cq; } ;


 int ENOMEM ;
 int MLX4_INVALID_LKEY ;
 int __set_data_seg (struct mlx4_wqe_data_seg*,scalar_t__) ;
 struct mlx4_wqe_data_seg* get_recv_wqe (struct mlx4_qp*,int) ;
 void* htobe32 (int) ;
 int pthread_spin_lock (int *) ;
 int pthread_spin_unlock (int *) ;
 int to_mcq (int ) ;
 struct mlx4_qp* to_mqp (struct ibv_qp*) ;
 int udma_to_device_barrier () ;
 scalar_t__ wq_overflow (TYPE_1__*,int,int ) ;

int mlx4_post_recv(struct ibv_qp *ibqp, struct ibv_recv_wr *wr,
     struct ibv_recv_wr **bad_wr)
{
 struct mlx4_qp *qp = to_mqp(ibqp);
 struct mlx4_wqe_data_seg *scat;
 int ret = 0;
 int nreq;
 int ind;
 int i;

 pthread_spin_lock(&qp->rq.lock);



 ind = qp->rq.head & (qp->rq.wqe_cnt - 1);

 for (nreq = 0; wr; ++nreq, wr = wr->next) {
  if (wq_overflow(&qp->rq, nreq, to_mcq(ibqp->recv_cq))) {
   ret = ENOMEM;
   *bad_wr = wr;
   goto out;
  }

  if (wr->num_sge > qp->rq.max_gs) {
   ret = ENOMEM;
   *bad_wr = wr;
   goto out;
  }

  scat = get_recv_wqe(qp, ind);

  for (i = 0; i < wr->num_sge; ++i)
   __set_data_seg(scat + i, wr->sg_list + i);

  if (i < qp->rq.max_gs) {
   scat[i].byte_count = 0;
   scat[i].lkey = htobe32(MLX4_INVALID_LKEY);
   scat[i].addr = 0;
  }

  qp->rq.wrid[ind] = wr->wr_id;

  ind = (ind + 1) & (qp->rq.wqe_cnt - 1);
 }

out:
 if (nreq) {
  qp->rq.head += nreq;





  udma_to_device_barrier();

  *qp->db = htobe32(qp->rq.head & 0xffff);
 }

 pthread_spin_unlock(&qp->rq.lock);

 return ret;
}
