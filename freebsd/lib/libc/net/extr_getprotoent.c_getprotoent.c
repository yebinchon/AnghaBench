
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {int dummy; } ;
struct protodata {int data; int proto; } ;


 struct protodata* __protodata_init () ;
 scalar_t__ getprotoent_r (int *,int ,int,struct protoent**) ;

struct protoent *
getprotoent(void)
{
 struct protodata *pd;
 struct protoent *rval;

 if ((pd = __protodata_init()) == ((void*)0))
  return (((void*)0));
 if (getprotoent_r(&pd->proto, pd->data, sizeof(pd->data), &rval) != 0)
  return (((void*)0));
 return (rval);
}
