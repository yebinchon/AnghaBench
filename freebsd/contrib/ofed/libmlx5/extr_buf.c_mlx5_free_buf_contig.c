
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_context {int dummy; } ;
struct mlx5_buf {int length; int buf; } ;


 int ibv_dofork_range (int ,int ) ;
 int munmap (int ,int ) ;

void mlx5_free_buf_contig(struct mlx5_context *mctx, struct mlx5_buf *buf)
{
 ibv_dofork_range(buf->buf, buf->length);
 munmap(buf->buf, buf->length);
}
