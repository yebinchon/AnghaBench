
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct netent {int dummy; } ;
struct netdata {int data; int net; } ;


 struct netdata* __netdata_init () ;
 scalar_t__ getnetbyaddr_r (int ,int,int *,int ,int,struct netent**,int*) ;

struct netent *
getnetbyaddr(uint32_t addr, int af)
{
 struct netdata *nd;
 struct netent *rval;
 int ret_h_errno;

 if ((nd = __netdata_init()) == ((void*)0))
  return (((void*)0));
 if (getnetbyaddr_r(addr, af, &nd->net, nd->data, sizeof(nd->data),
     &rval, &ret_h_errno) != 0)
  return (((void*)0));
 return (rval);
}
