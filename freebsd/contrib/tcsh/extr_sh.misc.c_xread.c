
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 scalar_t__ handle_pending_signals () ;
 int read (int,void*,size_t) ;

ssize_t
xread(int fildes, void *buf, size_t nbyte)
{
    ssize_t res = -1;



    do
      if (handle_pending_signals())
   break;
    while ((res = read(fildes, buf, nbyte)) == -1 && errno == EINTR);
    return res;
}
