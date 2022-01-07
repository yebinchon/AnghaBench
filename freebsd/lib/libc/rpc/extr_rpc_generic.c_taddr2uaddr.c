
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {int dummy; } ;
struct netbuf {int dummy; } ;
struct __rpc_sockinfo {int si_af; } ;


 int __rpc_nconf2sockinfo (struct netconfig const*,struct __rpc_sockinfo*) ;
 char* __rpc_taddr2uaddr_af (int ,struct netbuf const*) ;

char *
taddr2uaddr(const struct netconfig *nconf, const struct netbuf *nbuf)
{
 struct __rpc_sockinfo si;

 if (!__rpc_nconf2sockinfo(nconf, &si))
  return ((void*)0);
 return __rpc_taddr2uaddr_af(si.si_af, nbuf);
}
