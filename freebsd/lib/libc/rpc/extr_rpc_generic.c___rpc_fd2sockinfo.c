
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr {int dummy; } ;
struct __rpc_sockinfo {int si_alen; scalar_t__ si_af; int si_proto; int si_socktype; } ;
typedef int socklen_t ;


 scalar_t__ AF_LOCAL ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_TYPE ;
 scalar_t__ _getsockname (int,struct sockaddr*,int*) ;
 scalar_t__ _getsockopt (int,int ,int ,int*,int*) ;

int
__rpc_fd2sockinfo(int fd, struct __rpc_sockinfo *sip)
{
 socklen_t len;
 int type, proto;
 struct sockaddr_storage ss;

 len = sizeof ss;
 if (_getsockname(fd, (struct sockaddr *)(void *)&ss, &len) < 0)
  return 0;
 sip->si_alen = len;

 len = sizeof type;
 if (_getsockopt(fd, SOL_SOCKET, SO_TYPE, &type, &len) < 0)
  return 0;


 if (ss.ss_family != AF_LOCAL) {
  if (type == SOCK_STREAM)
   proto = IPPROTO_TCP;
  else if (type == SOCK_DGRAM)
   proto = IPPROTO_UDP;
  else
   return 0;
 } else
  proto = 0;

 sip->si_af = ss.ss_family;
 sip->si_proto = proto;
 sip->si_socktype = type;

 return 1;
}
