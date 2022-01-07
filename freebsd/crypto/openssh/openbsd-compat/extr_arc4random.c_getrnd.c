
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int O_RDONLY ;
 int SSH_RANDOM_DEV ;
 int close (int) ;
 scalar_t__ errno ;
 int fatal (char*,int ,int ) ;
 scalar_t__ getrandom (int *,size_t,int ) ;
 int open (int ,int ) ;
 scalar_t__ read (int,int *,size_t) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static void
getrnd(u_char *s, size_t len)
{
 int fd;
 ssize_t r;
 size_t o = 0;






 if ((fd = open(SSH_RANDOM_DEV, O_RDONLY)) == -1)
  fatal("Couldn't open %s: %s", SSH_RANDOM_DEV, strerror(errno));
 while (o < len) {
  r = read(fd, s + o, len - o);
  if (r < 0) {
   if (errno == EAGAIN || errno == EINTR ||
       errno == EWOULDBLOCK)
    continue;
   fatal("read %s: %s", SSH_RANDOM_DEV, strerror(errno));
  }
  o += r;
 }
 close(fd);
}
