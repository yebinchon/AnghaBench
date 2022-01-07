
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;
struct hostdata {int data; int host; } ;


 struct hostdata* __hostdata_init () ;
 scalar_t__ gethostbyname_r (char const*,int *,int ,int,struct hostent**,int*) ;

struct hostent *
gethostbyname(const char *name)
{
 struct hostdata *hd;
 struct hostent *rval;
 int ret_h_errno;

 if ((hd = __hostdata_init()) == ((void*)0))
  return (((void*)0));
 if (gethostbyname_r(name, &hd->host, hd->data, sizeof(hd->data), &rval,
     &ret_h_errno) != 0)
  return (((void*)0));
 return (rval);
}
