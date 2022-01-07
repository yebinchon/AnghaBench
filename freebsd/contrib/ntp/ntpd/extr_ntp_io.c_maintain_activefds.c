
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CLR (int,int *) ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_SETSIZE ;
 int INSIST (int) ;
 int LOG_ERR ;
 int activefds ;
 int exit (int) ;
 int max (int,int) ;
 int maxactivefd ;
 int msyslog (int ,char*,int,int) ;

void
maintain_activefds(
 int fd,
 int closing
 )
{
 int i;

 if (fd < 0 || fd >= FD_SETSIZE) {
  msyslog(LOG_ERR,
   "Too many sockets in use, FD_SETSIZE %d exceeded by fd %d",
   FD_SETSIZE, fd);
  exit(1);
 }

 if (!closing) {
  FD_SET(fd, &activefds);
  maxactivefd = max(fd, maxactivefd);
 } else {
  FD_CLR(fd, &activefds);
  if (maxactivefd && fd == maxactivefd) {
   for (i = maxactivefd - 1; i >= 0; i--)
    if (FD_ISSET(i, &activefds)) {
     maxactivefd = i;
     break;
    }
   INSIST(fd != maxactivefd);
  }
 }
}
