
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int optval ;


 int EINPROGRESS ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 scalar_t__ connect (int,struct sockaddr const*,int) ;
 int debug (char*,int ) ;
 int errno ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int set_nonblock (int) ;
 int strerror (int) ;
 int unset_nonblock (int) ;
 int waitrfd (int,int*) ;

__attribute__((used)) static int
timeout_connect(int sockfd, const struct sockaddr *serv_addr,
    socklen_t addrlen, int *timeoutp)
{
 int optval = 0;
 socklen_t optlen = sizeof(optval);


 if (*timeoutp <= 0)
  return connect(sockfd, serv_addr, addrlen);

 set_nonblock(sockfd);
 if (connect(sockfd, serv_addr, addrlen) == 0) {

  unset_nonblock(sockfd);
  return 0;
 } else if (errno != EINPROGRESS)
  return -1;

 if (waitrfd(sockfd, timeoutp) == -1)
  return -1;


 if (getsockopt(sockfd, SOL_SOCKET, SO_ERROR, &optval, &optlen) == -1) {
  debug("getsockopt: %s", strerror(errno));
  return -1;
 }
 if (optval != 0) {
  errno = optval;
  return -1;
 }
 unset_nonblock(sockfd);
 return 0;
}
