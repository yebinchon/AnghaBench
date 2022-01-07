
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_buf {scalar_t__ length; int buf; } ;


 int ibv_dofork_range (int ,scalar_t__) ;
 int munmap (int ,scalar_t__) ;

void mlx4_free_buf(struct mlx4_buf *buf)
{
 if (buf->length) {
  ibv_dofork_range(buf->buf, buf->length);
  munmap(buf->buf, buf->length);
 }
}
