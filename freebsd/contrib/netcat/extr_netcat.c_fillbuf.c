
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 size_t BUFSIZE ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int read (int,unsigned char*,size_t) ;

ssize_t
fillbuf(int fd, unsigned char *buf, size_t *bufpos)
{
 size_t num = BUFSIZE - *bufpos;
 ssize_t n;

 n = read(fd, buf + *bufpos, num);

 if (n == -1 && (errno == EAGAIN || errno == EINTR))
  n = -2;
 if (n <= 0)
  return n;
 *bufpos += n;
 return n;
}
