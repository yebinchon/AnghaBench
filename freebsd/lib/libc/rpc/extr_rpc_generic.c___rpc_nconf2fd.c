
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {int dummy; } ;
struct __rpc_sockinfo {int si_proto; int si_socktype; int si_af; } ;


 int __rpc_nconf2sockinfo (struct netconfig const*,struct __rpc_sockinfo*) ;
 int _socket (int ,int ,int ) ;

int
__rpc_nconf2fd(const struct netconfig *nconf)
{
 struct __rpc_sockinfo si;

 if (!__rpc_nconf2sockinfo(nconf, &si))
  return 0;

 return _socket(si.si_af, si.si_socktype, si.si_proto);
}
