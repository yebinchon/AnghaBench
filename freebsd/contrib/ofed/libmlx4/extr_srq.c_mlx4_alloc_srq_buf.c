
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct mlx4_wqe_srq_next_seg {int next_wqe_index; } ;
struct mlx4_wqe_data_seg {int lkey; } ;
struct TYPE_6__ {int buf; } ;
struct mlx4_srq {int max; int max_gs; int wqe_shift; int tail; scalar_t__ head; TYPE_3__ buf; int wrid; } ;
struct ibv_srq_attr {int dummy; } ;
struct ibv_pd {TYPE_1__* context; } ;
struct TYPE_5__ {int page_size; } ;
struct TYPE_4__ {int device; } ;


 int MLX4_INVALID_LKEY ;
 int free (int ) ;
 struct mlx4_wqe_srq_next_seg* get_wqe (struct mlx4_srq*,int) ;
 int htobe16 (int) ;
 int htobe32 (int ) ;
 int malloc (int) ;
 int memset (int ,int ,int) ;
 scalar_t__ mlx4_alloc_buf (TYPE_3__*,int,int ) ;
 TYPE_2__* to_mdev (int ) ;

int mlx4_alloc_srq_buf(struct ibv_pd *pd, struct ibv_srq_attr *attr,
         struct mlx4_srq *srq)
{
 struct mlx4_wqe_srq_next_seg *next;
 struct mlx4_wqe_data_seg *scatter;
 int size;
 int buf_size;
 int i;

 srq->wrid = malloc(srq->max * sizeof (uint64_t));
 if (!srq->wrid)
  return -1;

 size = sizeof (struct mlx4_wqe_srq_next_seg) +
  srq->max_gs * sizeof (struct mlx4_wqe_data_seg);

 for (srq->wqe_shift = 5; 1 << srq->wqe_shift < size; ++srq->wqe_shift)
  ;

 buf_size = srq->max << srq->wqe_shift;

 if (mlx4_alloc_buf(&srq->buf, buf_size,
      to_mdev(pd->context->device)->page_size)) {
  free(srq->wrid);
  return -1;
 }

 memset(srq->buf.buf, 0, buf_size);






 for (i = 0; i < srq->max; ++i) {
  next = get_wqe(srq, i);
  next->next_wqe_index = htobe16((i + 1) & (srq->max - 1));

  for (scatter = (void *) (next + 1);
       (void *) scatter < (void *) next + (1 << srq->wqe_shift);
       ++scatter)
   scatter->lkey = htobe32(MLX4_INVALID_LKEY);
 }

 srq->head = 0;
 srq->tail = srq->max - 1;

 return 0;
}
