
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_ctx {scalar_t__ tc_magic; int tc_fd; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int socklen_t ;
typedef int sa ;


 int PJDLOG_ASSERT (int) ;
 int PJDLOG_VERIFY (int) ;
 scalar_t__ TCP_CTX_MAGIC ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 scalar_t__ snprintf (char*,size_t,char*,struct sockaddr_storage*) ;
 int sockaddr_to_string (struct sockaddr_storage*,char*,size_t) ;
 size_t strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void
tcp_local_address(const void *ctx, char *addr, size_t size)
{
 const struct tcp_ctx *tctx = ctx;
 struct sockaddr_storage sa;
 socklen_t salen;

 PJDLOG_ASSERT(tctx != ((void*)0));
 PJDLOG_ASSERT(tctx->tc_magic == TCP_CTX_MAGIC);

 salen = sizeof(sa);
 if (getsockname(tctx->tc_fd, (struct sockaddr *)&sa, &salen) < 0) {
  PJDLOG_VERIFY(strlcpy(addr, "N/A", size) < size);
  return;
 }



 strlcpy(addr, "tcp://", size);
 if (size > 6)
  sockaddr_to_string(&sa, addr + 6, size - 6);

}
