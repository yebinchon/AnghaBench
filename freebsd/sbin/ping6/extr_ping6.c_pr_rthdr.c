
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_rthdr {int ip6r_nxt; int ip6r_len; int ip6r_type; int ip6r_segleft; } ;
struct in6_addr {int dummy; } ;
typedef int ntopbuf ;


 int AF_INET6 ;
 size_t CMSG_SPACE (int ) ;
 int INET6_ADDRSTRLEN ;
 int IPV6_RTHDR_TYPE_0 ;
 struct in6_addr* inet6_rth_getaddr (void*,int) ;
 int inet6_rth_segments (void*) ;
 int inet6_rth_space (int ,int) ;
 int inet_ntop (int ,struct in6_addr*,char*,int) ;
 int printf (char*,...) ;
 int strlcpy (char*,char*,int) ;
 int warnx (char*,int,int) ;

__attribute__((used)) static void
pr_rthdr(void *extbuf, size_t bufsize)
{
 struct in6_addr *in6;
 char ntopbuf[INET6_ADDRSTRLEN];
 struct ip6_rthdr *rh = (struct ip6_rthdr *)extbuf;
 int i, segments, origsegs, rthsize, size0, size1;


 printf("nxt %u, len %u (%d bytes), type %u, ", rh->ip6r_nxt,
     rh->ip6r_len, (rh->ip6r_len + 1) << 3, rh->ip6r_type);
 if ((segments = inet6_rth_segments(extbuf)) >= 0) {
  printf("%d segments, ", segments);
  printf("%d left\n", rh->ip6r_segleft);
 } else {
  printf("segments unknown, ");
  printf("%d left\n", rh->ip6r_segleft);
  return;
 }
 rthsize = (rh->ip6r_len + 1) * 8;
 if (bufsize < (rthsize + CMSG_SPACE(0))) {
  origsegs = segments;
  size0 = inet6_rth_space(IPV6_RTHDR_TYPE_0, 0);
  size1 = inet6_rth_space(IPV6_RTHDR_TYPE_0, 1);
  segments -= (rthsize - (bufsize - CMSG_SPACE(0))) /
      (size1 - size0) + 1;
  warnx("segments truncated, showing only %d (total=%d)",
      segments, origsegs);
 }

 for (i = 0; i < segments; i++) {
  in6 = inet6_rth_getaddr(extbuf, i);
  if (in6 == ((void*)0))
   printf("   [%d]<NULL>\n", i);
  else {
   if (!inet_ntop(AF_INET6, in6, ntopbuf,
       sizeof(ntopbuf)))
    strlcpy(ntopbuf, "?", sizeof(ntopbuf));
   printf("   [%d]%s\n", i, ntopbuf);
  }
 }

 return;

}
