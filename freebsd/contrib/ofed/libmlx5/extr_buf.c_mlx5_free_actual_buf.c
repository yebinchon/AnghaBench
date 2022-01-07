
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_context {int dummy; } ;
struct mlx5_buf {int type; } ;





 int fprintf (int ,char*) ;
 int free_huge_buf (struct mlx5_context*,struct mlx5_buf*) ;
 int mlx5_free_buf (struct mlx5_buf*) ;
 int mlx5_free_buf_contig (struct mlx5_context*,struct mlx5_buf*) ;
 int stderr ;

int mlx5_free_actual_buf(struct mlx5_context *ctx, struct mlx5_buf *buf)
{
 int err = 0;

 switch (buf->type) {
 case 130:
  mlx5_free_buf(buf);
  break;

 case 128:
  free_huge_buf(ctx, buf);
  break;

 case 129:
  mlx5_free_buf_contig(ctx, buf);
  break;
 default:
  fprintf(stderr, "Bad allocation type\n");
 }

 return err;
}
