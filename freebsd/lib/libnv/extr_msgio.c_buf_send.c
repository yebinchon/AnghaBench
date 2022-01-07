
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ ENOTCONN ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ errno ;
 int fd_wait (int,int) ;
 int send (int,unsigned char*,size_t,int ) ;

int
buf_send(int sock, void *buf, size_t size)
{
 ssize_t done;
 unsigned char *ptr;

 PJDLOG_ASSERT(sock >= 0);
 PJDLOG_ASSERT(size > 0);
 PJDLOG_ASSERT(buf != ((void*)0));

 ptr = buf;
 do {
  fd_wait(sock, 0);
  done = send(sock, ptr, size, 0);
  if (done == -1) {
   if (errno == EINTR)
    continue;
   return (-1);
  } else if (done == 0) {
   errno = ENOTCONN;
   return (-1);
  }
  size -= done;
  ptr += done;
 } while (size > 0);

 return (0);
}
