
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {int dummy; } ;
struct __rpc_sockinfo {int dummy; } ;


 int __rpc_fd2sockinfo (int,struct __rpc_sockinfo*) ;
 int __rpc_sockinfo2netid (struct __rpc_sockinfo*,char const**) ;
 struct netconfig* getnetconfigent (char*) ;

struct netconfig *
__rpcgettp(int fd)
{
 const char *netid;
 struct __rpc_sockinfo si;

 if (!__rpc_fd2sockinfo(fd, &si))
  return ((void*)0);

 if (!__rpc_sockinfo2netid(&si, &netid))
  return ((void*)0);


 return getnetconfigent((char *)netid);
}
