
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int EAGAIN ;
 int EINTR ;
 int _exit (int ) ;
 int errno ;
 size_t write (int,char*,size_t) ;

__attribute__((used)) static void
must_write(int fd, void *buf, size_t n)
{
 char *s = buf;
 ssize_t res, pos = 0;

 while (n > pos) {
  res = write(fd, s + pos, n - pos);
  switch (res) {
  case -1:
   if (errno == EINTR || errno == EAGAIN)
    continue;
  case 0:
   _exit(0);
  default:
   pos += res;
  }
 }
}
