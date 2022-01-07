
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_device {int page_size; } ;
struct mlx5_cqe64 {int op_own; } ;
struct mlx5_cq {int dummy; } ;
struct TYPE_2__ {int device; } ;
struct mlx5_context {TYPE_1__ ibv_ctx; } ;
struct mlx5_buf {struct mlx5_cqe64* buf; } ;
typedef enum mlx5_alloc_type { ____Placeholder_mlx5_alloc_type } mlx5_alloc_type ;


 int MLX5_ALLOC_TYPE_ANON ;
 int MLX5_ALLOC_TYPE_HUGE ;
 int MLX5_CQE_INVALID ;
 int MLX5_CQ_PREFIX ;
 int align (int,int ) ;
 int memset (struct mlx5_cqe64*,int ,int) ;
 int mlx5_alloc_prefered_buf (struct mlx5_context*,struct mlx5_buf*,int ,int ,int,int ) ;
 int mlx5_get_alloc_type (int ,int*,int) ;
 scalar_t__ mlx5_use_huge (char*) ;
 struct mlx5_device* to_mdev (int ) ;

int mlx5_alloc_cq_buf(struct mlx5_context *mctx, struct mlx5_cq *cq,
        struct mlx5_buf *buf, int nent, int cqe_sz)
{
 struct mlx5_cqe64 *cqe;
 int i;
 struct mlx5_device *dev = to_mdev(mctx->ibv_ctx.device);
 int ret;
 enum mlx5_alloc_type type;
 enum mlx5_alloc_type default_type = MLX5_ALLOC_TYPE_ANON;

 if (mlx5_use_huge("HUGE_CQ"))
  default_type = MLX5_ALLOC_TYPE_HUGE;

 mlx5_get_alloc_type(MLX5_CQ_PREFIX, &type, default_type);

 ret = mlx5_alloc_prefered_buf(mctx, buf,
          align(nent * cqe_sz, dev->page_size),
          dev->page_size,
          type,
          MLX5_CQ_PREFIX);

 if (ret)
  return -1;

 memset(buf->buf, 0, nent * cqe_sz);

 for (i = 0; i < nent; ++i) {
  cqe = buf->buf + i * cqe_sz;
  cqe += cqe_sz == 128 ? 1 : 0;
  cqe->op_own = MLX5_CQE_INVALID << 4;
 }

 return 0;
}
