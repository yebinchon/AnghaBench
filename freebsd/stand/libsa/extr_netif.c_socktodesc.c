
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iodesc {int dummy; } ;


 int EBADF ;
 int SOPEN_MAX ;
 int errno ;
 struct iodesc* sockets ;

struct iodesc *
socktodesc(int sock)
{
 if (sock >= SOPEN_MAX) {
  errno = EBADF;
  return (((void*)0));
 }
 return (&sockets[sock]);
}
