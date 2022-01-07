
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_buf {int buf; int length; } ;


 int free (int ) ;
 int ibv_dofork_range (int ,int ) ;

void mlx5_free_buf(struct mlx5_buf *buf)
{
 ibv_dofork_range(buf->buf, buf->length);
 free(buf->buf);
}
