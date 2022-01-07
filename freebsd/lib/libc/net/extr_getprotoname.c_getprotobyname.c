
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {int dummy; } ;
struct protodata {int data; int proto; } ;


 struct protodata* __protodata_init () ;
 scalar_t__ getprotobyname_r (char const*,int *,int ,int,struct protoent**) ;

struct protoent *
getprotobyname(const char *name)
{
 struct protodata *pd;
 struct protoent *rval;

 if ((pd = __protodata_init()) == ((void*)0))
  return (((void*)0));
 if (getprotobyname_r(name, &pd->proto, pd->data, sizeof(pd->data),
     &rval) != 0)
  return (((void*)0));
 return (rval);
}
