
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct in_addr {int s_addr; } ;
struct in6_addr {int dummy; } ;
struct hostent {int dummy; } ;
typedef TYPE_1__* res_state ;
struct TYPE_5__ {int options; int res_h_errno; } ;




 int IN6_IS_ADDR_UNSPECIFIED (struct in6_addr*) ;
 int IN6_IS_ADDR_V4COMPAT (struct in6_addr*) ;
 int IN6_IS_ADDR_V4MAPPED (struct in6_addr*) ;
 int NETDB_INTERNAL ;
 int NO_RECOVERY ;
 int RES_INIT ;
 int RES_SET_H_ERRNO (TYPE_1__*,int ) ;
 int RES_USE_INET6 ;
 TYPE_1__* __res_state () ;
 struct hostent* _hpcopy (struct hostent*,int*) ;
 struct hostent* gethostbyaddr (void const*,size_t,int) ;
 int memcpy (struct in_addr*,void const*,size_t) ;
 scalar_t__ res_ninit (TYPE_1__*) ;
 int rounddown2 (long,int) ;

struct hostent *
getipnodebyaddr(const void *src, size_t len, int af, int *errp)
{
 struct hostent *hp;
 res_state statp;
 u_long options;




 struct in_addr addrbuf;


 switch (af) {
 case 129:
  if (len != sizeof(struct in_addr)) {
   *errp = NO_RECOVERY;
   return ((void*)0);
  }
  if (rounddown2((long)src, sizeof(struct in_addr))) {
   memcpy(&addrbuf, src, len);
   src = &addrbuf;
  }
  if (((struct in_addr *)src)->s_addr == 0)
   return ((void*)0);
  break;
 default:
  *errp = NO_RECOVERY;
  return ((void*)0);
 }

 statp = __res_state();
 if ((statp->options & RES_INIT) == 0) {
  if (res_ninit(statp) < 0) {
   RES_SET_H_ERRNO(statp, NETDB_INTERNAL);
   return ((void*)0);
  }
 }

 options = statp->options;
 statp->options &= ~RES_USE_INET6;

 hp = gethostbyaddr(src, len, af);
 if (hp == ((void*)0))
  *errp = statp->res_h_errno;

 statp->options = options;
 return (_hpcopy(hp, errp));
}
