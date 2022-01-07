
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int fd_set ;


 int ETIMEDOUT ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int accept (int,struct sockaddr*,int *) ;
 int errno ;
 int select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int
accept_with_timeout(int socket,
      struct sockaddr *address,
      socklen_t *address_len,
      struct timeval *timeout)
{
    int ret;
    fd_set rfd;
    FD_ZERO(&rfd);
    FD_SET(socket, &rfd);
    ret = select(socket + 1, &rfd, ((void*)0), ((void*)0), timeout);
    if(ret < 0)
 return ret;
    if(ret == 0) {
 errno = ETIMEDOUT;
 return -1;
    }
    return accept(socket, address, address_len);
}
