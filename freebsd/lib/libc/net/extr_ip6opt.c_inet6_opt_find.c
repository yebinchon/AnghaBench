
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
struct ip6_hbh {int dummy; } ;
typedef int socklen_t ;


 int ip6optlen (scalar_t__*,scalar_t__*) ;

int
inet6_opt_find(void *extbuf, socklen_t extlen, int offset, u_int8_t type,
        socklen_t *lenp, void **databufp)
{
 u_int8_t *optp, *lim;
 int optlen;


 if (extlen == 0 || (extlen % 8))
  return(-1);
 lim = (u_int8_t *)extbuf + extlen;






 if (offset == 0) {
  optp = (u_int8_t *)((struct ip6_hbh *)extbuf + 1);
 }
 else
  optp = (u_int8_t *)extbuf + offset;


 while(optp < lim) {
  if ((optlen = ip6optlen(optp, lim)) == 0)
   goto optend;

  if (*optp == type) {
   *lenp = optlen - 2;
   *databufp = optp + 2;
   return(optp + optlen - (u_int8_t *)extbuf);
  }

  optp += optlen;
 }

  optend:
 *databufp = ((void*)0);
 return(-1);
}
