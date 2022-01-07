
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ EINTR ;
 int _write (int,char const*,size_t) ;
 scalar_t__ errno ;

__attribute__((used)) static bool
we_write_fully(int fd, const char *buffer, size_t len)
{
 size_t done;
 ssize_t nwritten;

 done = 0;
 do {
  nwritten = _write(fd, buffer + done, len - done);
  if (nwritten == -1 && errno == EINTR)
   continue;
  if (nwritten <= 0)
   return (0);
  done += nwritten;
 } while (done != len);
 return (1);
}
