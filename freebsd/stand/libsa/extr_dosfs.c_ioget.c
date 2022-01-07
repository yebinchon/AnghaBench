
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct open_file {int f_devdata; TYPE_1__* f_dev; } ;
typedef int daddr_t ;
struct TYPE_2__ {int (* dv_strategy ) (int ,int ,int ,size_t,void*,size_t*) ;} ;


 int EIO ;
 int F_READ ;
 int stub1 (int ,int ,int ,size_t,void*,size_t*) ;

__attribute__((used)) static int
ioget(struct open_file *fd, daddr_t lsec, void *buf, size_t size)
{
    size_t rsize;
    int rv;


    rsize = 0;
    rv = (fd->f_dev->dv_strategy)(fd->f_devdata, F_READ, lsec,
        size, buf, &rsize);
    if ((rv == 0) && (size != rsize))
        rv = EIO;
    return (rv);
}
