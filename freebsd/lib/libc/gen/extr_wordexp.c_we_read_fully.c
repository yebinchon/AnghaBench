
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ EINTR ;
 int _read (int,char*,size_t) ;
 scalar_t__ errno ;

__attribute__((used)) static size_t
we_read_fully(int fd, char *buffer, size_t len)
{
 size_t done;
 ssize_t nread;

 done = 0;
 do {
  nread = _read(fd, buffer + done, len - done);
  if (nread == -1 && errno == EINTR)
   continue;
  if (nread <= 0)
   break;
  done += nread;
 } while (done != len);
 return done;
}
