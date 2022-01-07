
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int iov_len; int iov_base; } ;
typedef int ssize_t ;


 int rrecv (int,int ,int ,int) ;

__attribute__((used)) static ssize_t rrecvv(int socket, const struct iovec *iov, int iovcnt, int flags)
{
 return rrecv(socket, iov[0].iov_base, iov[0].iov_len, flags);
}
