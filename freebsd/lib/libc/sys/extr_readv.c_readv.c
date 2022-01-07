
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;
typedef int ssize_t ;


 size_t INTERPOS_readv ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,struct iovec const*,int) ;

ssize_t
readv(int fd, const struct iovec *iov, int iovcnt)
{

 return (((ssize_t (*)(int, const struct iovec *, int))
     __libc_interposing[INTERPOS_readv])(fd, iov, iovcnt));
}
