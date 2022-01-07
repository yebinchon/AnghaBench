
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_DUPFD ;
 int LOG_ERR ;
 int __rpc_minfd ;
 int _close (int) ;
 int _fcntl (int,int ,int) ;
 int _fsync (int) ;
 int syslog (int ,char*,int) ;

int
__rpc_raise_fd(int fd)
{
 int nfd;

 if (fd >= __rpc_minfd)
  return (fd);

 if ((nfd = _fcntl(fd, F_DUPFD, __rpc_minfd)) == -1)
  return (fd);

 if (_fsync(nfd) == -1) {
  _close(nfd);
  return (fd);
 }

 if (_close(fd) == -1) {

  (void) syslog(LOG_ERR,
   "could not close() fd %d; mem & fd leak", fd);
 }

 return (nfd);
}
