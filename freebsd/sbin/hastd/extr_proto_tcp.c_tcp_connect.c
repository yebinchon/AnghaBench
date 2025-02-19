
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ss_family; int ss_len; } ;
struct tcp_ctx {scalar_t__ tc_magic; scalar_t__ tc_side; scalar_t__ tc_fd; TYPE_1__ tc_sa; } ;
struct sockaddr {int dummy; } ;


 scalar_t__ AF_UNSPEC ;
 int EINPROGRESS ;
 int F_GETFL ;
 int F_SETFL ;
 int LOG_DEBUG ;
 int O_NONBLOCK ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ TCP_CTX_MAGIC ;
 scalar_t__ TCP_SIDE_CLIENT ;
 scalar_t__ connect (scalar_t__,struct sockaddr*,int ) ;
 int errno ;
 int fcntl (scalar_t__,int ,...) ;
 int pjdlog_common (int ,int,int,char*) ;
 int tcp_connect_wait (void*,int) ;

__attribute__((used)) static int
tcp_connect(void *ctx, int timeout)
{
 struct tcp_ctx *tctx = ctx;
 int error, flags;

 PJDLOG_ASSERT(tctx != ((void*)0));
 PJDLOG_ASSERT(tctx->tc_magic == TCP_CTX_MAGIC);
 PJDLOG_ASSERT(tctx->tc_side == TCP_SIDE_CLIENT);
 PJDLOG_ASSERT(tctx->tc_fd >= 0);
 PJDLOG_ASSERT(tctx->tc_sa.ss_family != AF_UNSPEC);
 PJDLOG_ASSERT(timeout >= -1);

 flags = fcntl(tctx->tc_fd, F_GETFL);
 if (flags == -1) {
  pjdlog_common(LOG_DEBUG, 1, errno, "fcntl(F_GETFL) failed");
  return (errno);
 }




 flags |= O_NONBLOCK;
 if (fcntl(tctx->tc_fd, F_SETFL, flags) == -1) {
  pjdlog_common(LOG_DEBUG, 1, errno,
      "fcntl(F_SETFL, O_NONBLOCK) failed");
  return (errno);
 }

 if (connect(tctx->tc_fd, (struct sockaddr *)&tctx->tc_sa,
     tctx->tc_sa.ss_len) == 0) {
  if (timeout == -1)
   return (0);
  error = 0;
  goto done;
 }
 if (errno != EINPROGRESS) {
  error = errno;
  pjdlog_common(LOG_DEBUG, 1, errno, "connect() failed");
  goto done;
 }
 if (timeout == -1)
  return (0);
 return (tcp_connect_wait(ctx, timeout));
done:
 flags &= ~O_NONBLOCK;
 if (fcntl(tctx->tc_fd, F_SETFL, flags) == -1) {
  if (error == 0)
   error = errno;
  pjdlog_common(LOG_DEBUG, 1, errno,
      "fcntl(F_SETFL, ~O_NONBLOCK) failed");
 }
 return (error);
}
