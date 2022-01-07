
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ip6_ext {int ip6e_len; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_len; int cmsg_type; } ;


 scalar_t__ CMSG_DATA (struct cmsghdr const*) ;
 scalar_t__ CMSG_SPACE (int) ;
 scalar_t__ IPPROTO_IPV6 ;
 int ip6optlen (int*,int*) ;
 int is_ipv6_dstopts (int ) ;
 int is_ipv6_hopopts (int ) ;

int
inet6_option_find(const struct cmsghdr *cmsg, u_int8_t **tptrp, int type)
{
 struct ip6_ext *ip6e;
 int hdrlen, optlen;
 u_int8_t *optp, *lim;

 if (cmsg->cmsg_level != IPPROTO_IPV6 ||
     (!is_ipv6_hopopts(cmsg->cmsg_type) &&
      !is_ipv6_dstopts(cmsg->cmsg_type)))
  return(-1);


 if (cmsg->cmsg_len < CMSG_SPACE(sizeof(struct ip6_ext)))
  return(-1);
 ip6e = (struct ip6_ext *)CMSG_DATA(cmsg);
 hdrlen = (ip6e->ip6e_len + 1) << 3;
 if (cmsg->cmsg_len < CMSG_SPACE(hdrlen))
  return(-1);






 lim = (u_int8_t *)ip6e + hdrlen;
 if (*tptrp == ((void*)0))
  *tptrp = (u_int8_t *)(ip6e + 1);
 else {
  if ((optlen = ip6optlen(*tptrp, lim)) == 0)
   return(-1);

  *tptrp = *tptrp + optlen;
 }
 for (optp = *tptrp; optp < lim; optp += optlen) {
  if (*optp == type) {
   *tptrp = optp;
   return(0);
  }
  if ((optlen = ip6optlen(optp, lim)) == 0)
   return(-1);
 }


 *tptrp = ((void*)0);
 return(-1);
}
