
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int memmove (unsigned char*,unsigned char*,int) ;
 int write (int,unsigned char*,size_t) ;

ssize_t
drainbuf(int fd, unsigned char *buf, size_t *bufpos)
{
 ssize_t n;
 ssize_t adjust;

 n = write(fd, buf, *bufpos);

 if (n == -1 && (errno == EAGAIN || errno == EINTR))
  n = -2;
 if (n <= 0)
  return n;

 adjust = *bufpos - n;
 if (adjust > 0)
  memmove(buf, buf + n, adjust);
 *bufpos -= n;
 return n;
}
