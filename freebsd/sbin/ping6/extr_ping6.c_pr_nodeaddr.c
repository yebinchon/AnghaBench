
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int32_t ;
typedef int u_char ;
typedef int t ;
struct in6_addr {int dummy; } ;
struct icmp6_nodeinfo {int ni_code; int ni_flags; } ;
typedef int ntop_buf ;


 int AF_INET6 ;
 int F_VERBOSE ;


 int INET6_ADDRSTRLEN ;
 int NI_NODEADDR_FLAG_TRUNCATE ;
 int * inet_ntop (int ,int *,char*,int) ;
 int memcpy (int *,int *,int) ;
 int ntohl (int ) ;
 int options ;
 int printf (char*,...) ;
 int putchar (char) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static void
pr_nodeaddr(struct icmp6_nodeinfo *ni, int nilen)

{
 u_char *cp = (u_char *)(ni + 1);
 char ntop_buf[INET6_ADDRSTRLEN];
 int withttl = 0;

 nilen -= sizeof(struct icmp6_nodeinfo);

 if (options & F_VERBOSE) {
  switch (ni->ni_code) {
  case 129:
   (void)printf("refused");
   break;
  case 128:
   (void)printf("unknown qtype");
   break;
  }
  if (ni->ni_flags & NI_NODEADDR_FLAG_TRUNCATE)
   (void)printf(" truncated");
 }
 putchar('\n');
 if (nilen <= 0)
  printf("  no address\n");







 if (nilen % (sizeof(u_int32_t) + sizeof(struct in6_addr)) == 0)
  withttl = 1;
 while (nilen > 0) {
  u_int32_t ttl = 0;

  if (withttl) {
   uint32_t t;

   memcpy(&t, cp, sizeof(t));
   ttl = (u_int32_t)ntohl(t);
   cp += sizeof(u_int32_t);
   nilen -= sizeof(u_int32_t);
  }

  if (inet_ntop(AF_INET6, cp, ntop_buf, sizeof(ntop_buf)) ==
      ((void*)0))
   strlcpy(ntop_buf, "?", sizeof(ntop_buf));
  printf("  %s", ntop_buf);
  if (withttl) {
   if (ttl == 0xffffffff) {




    printf("(TTL=infty)");
   }
   else
    printf("(TTL=%u)", ttl);
  }
  putchar('\n');

  nilen -= sizeof(struct in6_addr);
  cp += sizeof(struct in6_addr);
 }
}
