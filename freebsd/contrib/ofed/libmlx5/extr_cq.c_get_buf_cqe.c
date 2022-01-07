
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_buf {void* buf; } ;



__attribute__((used)) static void *get_buf_cqe(struct mlx5_buf *buf, int n, int cqe_sz)
{
 return buf->buf + n * cqe_sz;
}
