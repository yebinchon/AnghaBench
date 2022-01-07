
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct aiocb {int dummy; } ;


 size_t INTERPOS_aio_suspend ;
 scalar_t__* __libc_interposing ;
 int stub1 (struct aiocb const* const*,int,struct timespec const*) ;

int
aio_suspend(const struct aiocb * const iocbs[], int niocb,
    const struct timespec *timeout)
{

 return (((int (*)(const struct aiocb * const[], int,
     const struct timespec *))
     __libc_interposing[INTERPOS_aio_suspend])(iocbs, niocb, timeout));
}
