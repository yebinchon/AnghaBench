
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;
struct hostdata {int data; int host; } ;
typedef int socklen_t ;


 struct hostdata* __hostdata_init () ;
 scalar_t__ gethostbyaddr_r (void const*,int ,int,int *,int ,int,struct hostent**,int*) ;

struct hostent *
gethostbyaddr(const void *addr, socklen_t len, int af)
{
 struct hostdata *hd;
 struct hostent *rval;
 int ret_h_errno;

 if ((hd = __hostdata_init()) == ((void*)0))
  return (((void*)0));
 if (gethostbyaddr_r(addr, len, af, &hd->host, hd->data,
     sizeof(hd->data), &rval, &ret_h_errno) != 0)
  return (((void*)0));
 return (rval);
}
