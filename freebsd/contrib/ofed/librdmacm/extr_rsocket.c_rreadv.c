
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;
typedef int ssize_t ;


 int rrecvv (int,struct iovec const*,int,int ) ;

ssize_t rreadv(int socket, const struct iovec *iov, int iovcnt)
{
 return rrecvv(socket, iov, iovcnt, 0);
}
