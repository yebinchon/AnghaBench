
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
struct tube {int sr; } ;
typedef int ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int fd_set_block (int) ;
 int fd_set_nonblock (int) ;
 int free (char*) ;
 int log_assert (int) ;
 int log_err (char*,...) ;
 scalar_t__ malloc (int) ;
 int read (int,...) ;
 int strerror (scalar_t__) ;

int tube_read_msg(struct tube* tube, uint8_t** buf, uint32_t* len,
        int nonblock)
{
 ssize_t r, d;
 int fd = tube->sr;


 *len = 0;
 if(nonblock) {
  r = read(fd, len, sizeof(*len));
  if(r == -1) {
   if(errno==EINTR || errno==EAGAIN)
    return -1;
   log_err("tube msg read failed: %s", strerror(errno));
   return -1;
  }
  if(r == 0)
   return 0;
 } else r = 0;
 if(!fd_set_block(fd))
  return 0;

 d = r;
 while(d != (ssize_t)sizeof(*len)) {
  if((r=read(fd, ((char*)len)+d, sizeof(*len)-d)) == -1) {
   log_err("tube msg read failed: %s", strerror(errno));
   (void)fd_set_nonblock(fd);
   return 0;
  }
  if(r == 0) {
   (void)fd_set_nonblock(fd);
   return 0;
  }
  d += r;
 }
 log_assert(*len < 65536*2);
 *buf = (uint8_t*)malloc(*len);
 if(!*buf) {
  log_err("tube read out of memory");
  (void)fd_set_nonblock(fd);
  return 0;
 }
 d = 0;
 while(d < (ssize_t)*len) {
  if((r=read(fd, (*buf)+d, (size_t)((ssize_t)*len)-d)) == -1) {
   log_err("tube msg read failed: %s", strerror(errno));
   (void)fd_set_nonblock(fd);
   free(*buf);
   return 0;
  }
  if(r == 0) {
   (void)fd_set_nonblock(fd);
   free(*buf);
   return 0;
  }
  d += r;
 }
 if(!fd_set_nonblock(fd)) {
  free(*buf);
  return 0;
 }
 return 1;
}
