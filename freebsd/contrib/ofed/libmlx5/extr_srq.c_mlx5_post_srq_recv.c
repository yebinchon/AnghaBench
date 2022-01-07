
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_wqe_srq_next_seg {int next_wqe_index; } ;
struct mlx5_wqe_data_seg {scalar_t__ addr; void* lkey; void* byte_count; } ;
struct mlx5_srq {int max_gs; size_t head; size_t tail; int counter; int lock; void** db; int * wrid; } ;
struct ibv_srq {int dummy; } ;
struct ibv_recv_wr {int num_sge; TYPE_1__* sg_list; int wr_id; struct ibv_recv_wr* next; } ;
struct TYPE_2__ {int length; int lkey; int addr; } ;


 int EINVAL ;
 int ENOMEM ;
 int MLX5_INVALID_LKEY ;
 size_t be16toh (int ) ;
 struct mlx5_wqe_srq_next_seg* get_wqe (struct mlx5_srq*,size_t) ;
 void* htobe32 (int) ;
 scalar_t__ htobe64 (int ) ;
 int mlx5_spin_lock (int *) ;
 int mlx5_spin_unlock (int *) ;
 struct mlx5_srq* to_msrq (struct ibv_srq*) ;
 int udma_to_device_barrier () ;

int mlx5_post_srq_recv(struct ibv_srq *ibsrq,
         struct ibv_recv_wr *wr,
         struct ibv_recv_wr **bad_wr)
{
 struct mlx5_srq *srq = to_msrq(ibsrq);
 struct mlx5_wqe_srq_next_seg *next;
 struct mlx5_wqe_data_seg *scat;
 int err = 0;
 int nreq;
 int i;

 mlx5_spin_lock(&srq->lock);

 for (nreq = 0; wr; ++nreq, wr = wr->next) {
  if (wr->num_sge > srq->max_gs) {
   err = EINVAL;
   *bad_wr = wr;
   break;
  }

  if (srq->head == srq->tail) {

   err = ENOMEM;
   *bad_wr = wr;
   break;
  }

  srq->wrid[srq->head] = wr->wr_id;

  next = get_wqe(srq, srq->head);
  srq->head = be16toh(next->next_wqe_index);
  scat = (struct mlx5_wqe_data_seg *) (next + 1);

  for (i = 0; i < wr->num_sge; ++i) {
   scat[i].byte_count = htobe32(wr->sg_list[i].length);
   scat[i].lkey = htobe32(wr->sg_list[i].lkey);
   scat[i].addr = htobe64(wr->sg_list[i].addr);
  }

  if (i < srq->max_gs) {
   scat[i].byte_count = 0;
   scat[i].lkey = htobe32(MLX5_INVALID_LKEY);
   scat[i].addr = 0;
  }
 }

 if (nreq) {
  srq->counter += nreq;





  udma_to_device_barrier();

  *srq->db = htobe32(srq->counter);
 }

 mlx5_spin_unlock(&srq->lock);

 return err;
}
