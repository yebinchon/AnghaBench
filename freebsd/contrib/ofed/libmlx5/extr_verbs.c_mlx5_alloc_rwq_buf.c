
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int wqe_cnt; int wrid; } ;
struct mlx5_rwq {TYPE_1__ rq; int buf_size; int buf; } ;
struct ibv_context {int device; } ;
typedef enum mlx5_alloc_type { ____Placeholder_mlx5_alloc_type } mlx5_alloc_type ;
struct TYPE_4__ {int page_size; } ;


 int ENOMEM ;
 int MLX5_ALLOC_TYPE_PREFER_CONTIG ;
 int MLX5_RWQ_PREFIX ;
 int align (int ,int ) ;
 int errno ;
 int free (int ) ;
 int malloc (int) ;
 int mlx5_alloc_prefered_buf (int ,int *,int ,int ,int,int ) ;
 int to_mctx (struct ibv_context*) ;
 TYPE_2__* to_mdev (int ) ;

__attribute__((used)) static int mlx5_alloc_rwq_buf(struct ibv_context *context,
         struct mlx5_rwq *rwq,
         int size)
{
 int err;
 enum mlx5_alloc_type default_alloc_type = MLX5_ALLOC_TYPE_PREFER_CONTIG;

 rwq->rq.wrid = malloc(rwq->rq.wqe_cnt * sizeof(uint64_t));
 if (!rwq->rq.wrid) {
  errno = ENOMEM;
  return -1;
 }

 err = mlx5_alloc_prefered_buf(to_mctx(context), &rwq->buf,
          align(rwq->buf_size, to_mdev
          (context->device)->page_size),
          to_mdev(context->device)->page_size,
          default_alloc_type,
          MLX5_RWQ_PREFIX);

 if (err) {
  free(rwq->rq.wrid);
  errno = ENOMEM;
  return -1;
 }

 return 0;
}
