
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
struct tube {int sw; } ;
typedef int ssize_t ;
typedef int len ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int fd_set_block (int) ;
 int fd_set_nonblock (int) ;
 int log_err (char*,int ) ;
 int strerror (scalar_t__) ;
 int write (int,...) ;

int tube_write_msg(struct tube* tube, uint8_t* buf, uint32_t len,
        int nonblock)
{
 ssize_t r, d;
 int fd = tube->sw;


 if(nonblock) {
  r = write(fd, &len, sizeof(len));
  if(r == -1) {
   if(errno==EINTR || errno==EAGAIN)
    return -1;
   log_err("tube msg write failed: %s", strerror(errno));
   return -1;
  }
 } else r = 0;
 if(!fd_set_block(fd))
  return 0;

 d = r;
 while(d != (ssize_t)sizeof(len)) {
  if((r=write(fd, ((char*)&len)+d, sizeof(len)-d)) == -1) {
   if(errno == EAGAIN)
    continue;
   log_err("tube msg write failed: %s", strerror(errno));
   (void)fd_set_nonblock(fd);
   return 0;
  }
  d += r;
 }
 d = 0;
 while(d != (ssize_t)len) {
  if((r=write(fd, buf+d, len-d)) == -1) {
   if(errno == EAGAIN)
    continue;
   log_err("tube msg write failed: %s", strerror(errno));
   (void)fd_set_nonblock(fd);
   return 0;
  }
  d += r;
 }
 if(!fd_set_nonblock(fd))
  return 0;
 return 1;
}
