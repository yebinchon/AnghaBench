
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_context {int hugetlb_lock; int hugetlb_list; } ;
struct mlx5_buf {int length; TYPE_1__* hmem; int base; } ;
struct TYPE_3__ {int bitmap; } ;


 int MLX5_Q_CHUNK_SIZE ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 scalar_t__ bitmap_empty (int *) ;
 int bitmap_free_range (int *,int ,int) ;
 int entry ;
 int free_huge_mem (TYPE_1__*) ;
 int mlx5_spin_lock (int *) ;
 int mlx5_spin_unlock (int *) ;

__attribute__((used)) static void free_huge_buf(struct mlx5_context *ctx, struct mlx5_buf *buf)
{
 int nchunk;

 nchunk = buf->length / MLX5_Q_CHUNK_SIZE;
 mlx5_spin_lock(&ctx->hugetlb_lock);
 bitmap_free_range(&buf->hmem->bitmap, buf->base, nchunk);
 if (bitmap_empty(&buf->hmem->bitmap)) {
  TAILQ_REMOVE(&ctx->hugetlb_list, buf->hmem, entry);
  mlx5_spin_unlock(&ctx->hugetlb_lock);
  free_huge_mem(buf->hmem);
 } else
  mlx5_spin_unlock(&ctx->hugetlb_lock);
}
