
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct open_file {int f_devdata; TYPE_1__* f_dev; } ;
typedef int off_t ;
struct TYPE_2__ {int (* dv_strategy ) (int ,int ,int,int,void*,size_t*) ;} ;


 int DEV_BSIZE ;
 int EIO ;
 int ENOSPC ;
 int F_READ ;
 void* malloc (int) ;
 int stub1 (int ,int ,int,int,void*,size_t*) ;

__attribute__((used)) static int
ufs_use_sa_read(void *devfd, off_t loc, void **bufp, int size)
{
 struct open_file *f;
 size_t buf_size;
 int error;

 f = (struct open_file *)devfd;
 if ((*bufp = malloc(size)) == ((void*)0))
  return (ENOSPC);
 error = (f->f_dev->dv_strategy)(f->f_devdata, F_READ, loc / DEV_BSIZE,
     size, *bufp, &buf_size);
 if (error != 0)
  return (error);
 if (buf_size != size)
  return (EIO);
 return (0);
}
