
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netent {int dummy; } ;
struct netdata {int data; int net; } ;


 struct netdata* __netdata_init () ;
 scalar_t__ getnetent_r (int *,int ,int,struct netent**,int*) ;

struct netent *
getnetent(void)
{
 struct netdata *nd;
 struct netent *rval;
 int ret_h_errno;

 if ((nd = __netdata_init()) == ((void*)0))
  return (((void*)0));
 if (getnetent_r(&nd->net, nd->data, sizeof(nd->data), &rval,
     &ret_h_errno) != 0)
  return (((void*)0));
 return (rval);
}
