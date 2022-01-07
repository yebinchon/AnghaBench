
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_ctx {scalar_t__ tc_magic; int tc_fd; } ;
struct sockaddr_storage {int ss_family; scalar_t__ ss_len; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sa2 ;




 int PJDLOG_ASSERT (int) ;
 int PROTO_TCP_DEFAULT_PORT ;
 scalar_t__ TCP_CTX_MAGIC ;
 int getpeername (int ,struct sockaddr*,int*) ;
 int memcmp (int *,int *,int) ;
 scalar_t__ tcp_addr (char const*,int ,struct sockaddr_storage*) ;

__attribute__((used)) static bool
tcp_address_match(const void *ctx, const char *addr)
{
 const struct tcp_ctx *tctx = ctx;
 struct sockaddr_storage sa1, sa2;
 socklen_t salen;

 PJDLOG_ASSERT(tctx != ((void*)0));
 PJDLOG_ASSERT(tctx->tc_magic == TCP_CTX_MAGIC);

 if (tcp_addr(addr, PROTO_TCP_DEFAULT_PORT, &sa1) != 0)
  return (0);

 salen = sizeof(sa2);
 if (getpeername(tctx->tc_fd, (struct sockaddr *)&sa2, &salen) == -1)
  return (0);

 if (sa1.ss_family != sa2.ss_family || sa1.ss_len != sa2.ss_len)
  return (0);

 switch (sa1.ss_family) {
 case 129:
     {
  struct sockaddr_in *sin1, *sin2;

  sin1 = (struct sockaddr_in *)&sa1;
  sin2 = (struct sockaddr_in *)&sa2;

  return (memcmp(&sin1->sin_addr, &sin2->sin_addr,
      sizeof(sin1->sin_addr)) == 0);
     }
 case 128:
     {
  struct sockaddr_in6 *sin1, *sin2;

  sin1 = (struct sockaddr_in6 *)&sa1;
  sin2 = (struct sockaddr_in6 *)&sa2;

  return (memcmp(&sin1->sin6_addr, &sin2->sin6_addr,
      sizeof(sin1->sin6_addr)) == 0);
     }
 default:
  return (0);
 }
}
