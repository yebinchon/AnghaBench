
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct tcp_ctx {int tc_fd; struct sockaddr_storage tc_sa; } ;
struct sockaddr {int dummy; } ;


 int EINPROGRESS ;
 int F_GETFL ;
 int F_SETFL ;
 int LOG_DEBUG ;
 int O_NONBLOCK ;
 int PJDLOG_ASSERT (int) ;
 int TCP_SIDE_CLIENT ;
 int bind (int ,struct sockaddr*,int ) ;
 int connect (int ,struct sockaddr*,int ) ;
 int errno ;
 int fcntl (int ,int ,...) ;
 int pjdlog_common (int ,int,int,char*) ;
 int sockaddr_len (struct sockaddr_storage*) ;
 int tcp_addr (char const*,int ,struct sockaddr_storage*) ;
 int tcp_close (struct tcp_ctx*) ;
 int tcp_connect_wait (struct tcp_ctx*,int) ;
 int tcp_setup_new (char const*,int ,struct tcp_ctx**) ;

__attribute__((used)) static int
tcp_connect(const char *srcaddr, const char *dstaddr, int timeout, void **ctxp)
{
 struct tcp_ctx *tctx;
 struct sockaddr_storage sa;
 int error, flags, ret;

 PJDLOG_ASSERT(srcaddr == ((void*)0) || srcaddr[0] != '\0');
 PJDLOG_ASSERT(dstaddr != ((void*)0));
 PJDLOG_ASSERT(timeout >= -1);

 error = tcp_setup_new(dstaddr, TCP_SIDE_CLIENT, &tctx);
 if (error != 0)
  return (error);
 if (srcaddr != ((void*)0)) {
  error = tcp_addr(srcaddr, 0, &sa);
  if (error != 0)
   goto fail;
  if (bind(tctx->tc_fd, (struct sockaddr *)&sa,
      sockaddr_len(&sa)) == -1) {
   error = errno;
   goto fail;
  }
 }

 flags = fcntl(tctx->tc_fd, F_GETFL);
 if (flags == -1) {
  error = errno;
  pjdlog_common(LOG_DEBUG, 1, errno, "fcntl(F_GETFL) failed");
  goto fail;
 }




 flags |= O_NONBLOCK;
 if (fcntl(tctx->tc_fd, F_SETFL, flags) == -1) {
  error = errno;
  pjdlog_common(LOG_DEBUG, 1, errno,
      "fcntl(F_SETFL, O_NONBLOCK) failed");
  goto fail;
 }

 ret = connect(tctx->tc_fd, (struct sockaddr *)&tctx->tc_sa,
     sockaddr_len(&tctx->tc_sa));
 if (ret == -1 && errno != EINPROGRESS) {
  error = errno;
  pjdlog_common(LOG_DEBUG, 1, errno, "connect() failed");
  goto fail;
 }

 if (timeout >= 0) {
  if (ret == -1) {

   error = tcp_connect_wait(tctx, timeout);
   if (error != 0)
    goto fail;
  } else {

   flags &= ~O_NONBLOCK;
   if (fcntl(tctx->tc_fd, F_SETFL, flags) == -1) {
    error = errno;
    pjdlog_common(LOG_DEBUG, 1, errno,
        "fcntl(F_SETFL, ~O_NONBLOCK) failed");
    goto fail;
   }
  }
 }

 *ctxp = tctx;
 return (0);
fail:
 tcp_close(tctx);
 return (error);
}
