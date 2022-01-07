
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_device {int page_size; } ;
struct mlx4_buf {int buf; } ;


 int align (int,int ) ;
 int memset (int ,int ,int) ;
 scalar_t__ mlx4_alloc_buf (struct mlx4_buf*,int ,int ) ;

int mlx4_alloc_cq_buf(struct mlx4_device *dev, struct mlx4_buf *buf, int nent,
        int entry_size)
{
 if (mlx4_alloc_buf(buf, align(nent * entry_size, dev->page_size),
      dev->page_size))
  return -1;
 memset(buf->buf, 0, nent * entry_size);

 return 0;
}
