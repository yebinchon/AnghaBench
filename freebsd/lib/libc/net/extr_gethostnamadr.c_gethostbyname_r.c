
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct hostent {int dummy; } ;
typedef TYPE_1__* res_state ;
struct TYPE_7__ {int options; } ;


 int AF_INET ;
 int AF_INET6 ;
 int NETDB_INTERNAL ;
 int RES_INIT ;
 int RES_SET_H_ERRNO (TYPE_1__*,int ) ;
 int RES_USE_INET6 ;
 TYPE_1__* __res_state () ;
 scalar_t__ fakeaddr (char const*,int ,struct hostent*,char*,size_t,TYPE_1__*) ;
 int gethostbyname_internal (char const*,int ,struct hostent*,char*,size_t,struct hostent**,int*,TYPE_1__*) ;
 int res_ninit (TYPE_1__*) ;

int
gethostbyname_r(const char *name, struct hostent *he, char *buffer,
    size_t buflen, struct hostent **result, int *h_errnop)
{
 res_state statp;

 statp = __res_state();
 if ((statp->options & RES_INIT) == 0 && res_ninit(statp) == -1) {
  RES_SET_H_ERRNO(statp, NETDB_INTERNAL);
  return (-1);
 }
 if (statp->options & RES_USE_INET6) {
  if (fakeaddr(name, AF_INET, he, buffer, buflen, statp) == 0) {
   *result = he;
   return (0);
  }
  if (gethostbyname_internal(name, AF_INET6, he, buffer, buflen,
      result, h_errnop, statp) == 0)
   return (0);
 }
 return (gethostbyname_internal(name, AF_INET, he, buffer, buflen,
     result, h_errnop, statp));
}
