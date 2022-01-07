
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 int FD_SET (int,int *) ;

__attribute__((used)) static int
fd_add(fd_set *fdsp, int maxfd, int fd)
{

 FD_SET(fd, fdsp);
 return (fd > maxfd ? fd : maxfd);
}
