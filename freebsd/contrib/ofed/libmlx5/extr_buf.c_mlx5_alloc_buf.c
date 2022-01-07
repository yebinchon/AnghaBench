
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_buf {int length; int type; int buf; } ;


 int MLX5_ALLOC_TYPE_ANON ;
 int align (size_t,int) ;
 int free (int ) ;
 int ibv_dontfork_range (int ,int) ;
 int posix_memalign (int *,int,int) ;

int mlx5_alloc_buf(struct mlx5_buf *buf, size_t size, int page_size)
{
 int ret;
 int al_size;

 al_size = align(size, page_size);
 ret = posix_memalign(&buf->buf, page_size, al_size);
 if (ret)
  return ret;

 ret = ibv_dontfork_range(buf->buf, al_size);
 if (ret)
  free(buf->buf);

 if (!ret) {
  buf->length = al_size;
  buf->type = MLX5_ALLOC_TYPE_ANON;
 }

 return ret;
}
