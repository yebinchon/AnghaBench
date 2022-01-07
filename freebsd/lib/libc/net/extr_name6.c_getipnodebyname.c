
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


union inx_addr {int in_addr; } ;
typedef int u_long ;
struct in_addr {int dummy; } ;
struct hostent {int h_name; } ;
typedef TYPE_1__* res_state ;
struct TYPE_5__ {int options; int res_h_errno; } ;




 int AI_ADDRCONFIG ;
 int AI_ALL ;
 int HOST_NOT_FOUND ;
 int MAPADDR (union inx_addr*,int *) ;
 scalar_t__ MAPADDRENABLED (int) ;
 int NETDB_INTERNAL ;
 int NO_RECOVERY ;
 int RES_INIT ;
 int RES_USE_INET6 ;
 int SOCK_CLOEXEC ;
 int SOCK_DGRAM ;
 TYPE_1__* __res_state () ;
 int _close (int) ;
 struct hostent* _hpaddr (int,char const*,union inx_addr*,int*) ;
 struct hostent* _hpcopy (struct hostent*,int*) ;
 struct hostent* _hpmapv6 (struct hostent*,int*) ;
 struct hostent* _hpmerge (struct hostent*,struct hostent*,int*) ;
 struct hostent* _hpreorder (struct hostent*) ;
 struct hostent* _hpsort (struct hostent*,TYPE_1__*) ;
 int _socket (int,int,int ) ;
 int freehostent (struct hostent*) ;
 struct hostent* gethostbyname2 (char const*,int const) ;
 int inet_aton (char const*,struct in_addr*) ;
 int inet_pton (int const,char const*,union inx_addr*) ;
 scalar_t__ res_ninit (TYPE_1__*) ;
 scalar_t__ strcmp (int ,int ) ;

struct hostent *
getipnodebyname(const char *name, int af, int flags, int *errp)
{
 struct hostent *hp;
 union inx_addr addrbuf;
 res_state statp;
 u_long options;

 switch (af) {
 case 129:



  break;
 default:
  *errp = NO_RECOVERY;
  return ((void*)0);
 }

 if (flags & AI_ADDRCONFIG) {
  int s;

  if ((s = _socket(af, SOCK_DGRAM | SOCK_CLOEXEC, 0)) < 0)
   return ((void*)0);







  _close(s);
 }
 if (inet_aton(name, (struct in_addr *)&addrbuf) == 1) {
  if (af != 129) {
   if (MAPADDRENABLED(flags)) {
    MAPADDR(&addrbuf, &addrbuf.in_addr);
   } else {
    *errp = HOST_NOT_FOUND;
    return ((void*)0);
   }
  }
  return _hpaddr(af, name, &addrbuf, errp);
 }


 statp = __res_state();
 if ((statp->options & RES_INIT) == 0) {
  if (res_ninit(statp) < 0) {
   *errp = NETDB_INTERNAL;
   return ((void*)0);
  }
 }

 options = statp->options;
 statp->options &= ~RES_USE_INET6;

 hp = gethostbyname2(name, af);
 hp = _hpcopy(hp, errp);
 if (hp == ((void*)0))
  *errp = statp->res_h_errno;

 statp->options = options;
 return _hpsort(hp, statp);
}
