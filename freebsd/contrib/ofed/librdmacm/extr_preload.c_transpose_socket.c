
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_calls {int (* getsockname ) (int,int *,int*) ;int (* socket ) (int,int ,int ) ;int (* close ) (int) ;} ;
struct sockaddr_in6 {int dummy; } ;
typedef int socklen_t ;
typedef enum fd_type { ____Placeholder_fd_type } fd_type ;


 int PF_INET ;
 int PF_INET6 ;
 int SOCK_STREAM ;
 int copysockopts (int,int,struct socket_calls*,struct socket_calls*) ;
 int fd_getd (int) ;
 int fd_ready ;
 int fd_rsocket ;
 int fd_store (int,int,int,int ) ;
 struct socket_calls real ;
 struct socket_calls rs ;
 int stub1 (int,int *,int*) ;
 int stub2 (int,int ,int ) ;
 int stub3 (int) ;

__attribute__((used)) static int transpose_socket(int socket, enum fd_type new_type)
{
 socklen_t len = 0;
 int sfd, dfd, param, ret;
 struct socket_calls *sapi, *dapi;

 sfd = fd_getd(socket);
 if (new_type == fd_rsocket) {
  dapi = &rs;
  sapi = &real;
 } else {
  dapi = &real;
  sapi = &rs;
 }

 ret = sapi->getsockname(sfd, ((void*)0), &len);
 if (ret)
  return ret;

 param = (len == sizeof(struct sockaddr_in6)) ? PF_INET6 : PF_INET;
 dfd = dapi->socket(param, SOCK_STREAM, 0);
 if (dfd < 0)
  return dfd;

 ret = copysockopts(dfd, sfd, dapi, sapi);
 if (ret)
  goto err;

 fd_store(socket, dfd, new_type, fd_ready);
 return dfd;

err:
 dapi->close(dfd);
 return ret;
}
