
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct mlx4_wqe_data_seg {int dummy; } ;
struct TYPE_8__ {int * buf; } ;
struct TYPE_6__ {int max_gs; int wqe_cnt; int wqe_shift; int offset; void* wrid; } ;
struct TYPE_5__ {int wqe_cnt; int wqe_shift; int offset; void* wrid; } ;
struct mlx4_qp {int buf_size; TYPE_4__ buf; TYPE_2__ rq; TYPE_1__ sq; } ;
struct ibv_qp_cap {int max_recv_sge; } ;
struct ibv_context {int device; } ;
typedef enum ibv_qp_type { ____Placeholder_ibv_qp_type } ibv_qp_type ;
struct TYPE_7__ {int page_size; } ;


 int align (int,int ) ;
 int free (void*) ;
 void* malloc (int) ;
 int memset (int *,int ,int) ;
 scalar_t__ mlx4_alloc_buf (TYPE_4__*,int ,int ) ;
 TYPE_3__* to_mdev (int ) ;

int mlx4_alloc_qp_buf(struct ibv_context *context, struct ibv_qp_cap *cap,
         enum ibv_qp_type type, struct mlx4_qp *qp)
{
 qp->rq.max_gs = cap->max_recv_sge;

 if (qp->sq.wqe_cnt) {
  qp->sq.wrid = malloc(qp->sq.wqe_cnt * sizeof (uint64_t));
  if (!qp->sq.wrid)
   return -1;
 }

 if (qp->rq.wqe_cnt) {
  qp->rq.wrid = malloc(qp->rq.wqe_cnt * sizeof (uint64_t));
  if (!qp->rq.wrid) {
   free(qp->sq.wrid);
   return -1;
  }
 }

 for (qp->rq.wqe_shift = 4;
      1 << qp->rq.wqe_shift < qp->rq.max_gs * sizeof (struct mlx4_wqe_data_seg);
      qp->rq.wqe_shift++)
  ;

 qp->buf_size = (qp->rq.wqe_cnt << qp->rq.wqe_shift) +
  (qp->sq.wqe_cnt << qp->sq.wqe_shift);
 if (qp->rq.wqe_shift > qp->sq.wqe_shift) {
  qp->rq.offset = 0;
  qp->sq.offset = qp->rq.wqe_cnt << qp->rq.wqe_shift;
 } else {
  qp->rq.offset = qp->sq.wqe_cnt << qp->sq.wqe_shift;
  qp->sq.offset = 0;
 }

 if (qp->buf_size) {
  if (mlx4_alloc_buf(&qp->buf,
       align(qp->buf_size, to_mdev(context->device)->page_size),
       to_mdev(context->device)->page_size)) {
   free(qp->sq.wrid);
   free(qp->rq.wrid);
   return -1;
  }

  memset(qp->buf.buf, 0, qp->buf_size);
 } else {
  qp->buf.buf = ((void*)0);
 }

 return 0;
}
