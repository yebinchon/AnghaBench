
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aiocb {int dummy; } ;


 int __sys_aio_write ;
 int aio_io (struct aiocb*,int *) ;

int
__aio_write(struct aiocb *iocb)
{

 return aio_io(iocb, &__sys_aio_write);
}
