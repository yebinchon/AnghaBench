
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tube {int sr; int sw; } ;


 int AF_UNIX ;
 int SOCK_STREAM ;
 scalar_t__ calloc (int,int) ;
 int errno ;
 int fd_set_nonblock (int) ;
 int free (struct tube*) ;
 int log_err (char*,...) ;
 int socketpair (int ,int ,int ,int*) ;
 int strerror (int) ;
 int tube_delete (struct tube*) ;

struct tube* tube_create(void)
{
 struct tube* tube = (struct tube*)calloc(1, sizeof(*tube));
 int sv[2];
 if(!tube) {
  int err = errno;
  log_err("tube_create: out of memory");
  errno = err;
  return ((void*)0);
 }
 tube->sr = -1;
 tube->sw = -1;
 if(socketpair(AF_UNIX, SOCK_STREAM, 0, sv) == -1) {
  int err = errno;
  log_err("socketpair: %s", strerror(errno));
  free(tube);
  errno = err;
  return ((void*)0);
 }
 tube->sr = sv[0];
 tube->sw = sv[1];
 if(!fd_set_nonblock(tube->sr) || !fd_set_nonblock(tube->sw)) {
  int err = errno;
  log_err("tube: cannot set nonblocking");
  tube_delete(tube);
  errno = err;
  return ((void*)0);
 }
 return tube;
}
