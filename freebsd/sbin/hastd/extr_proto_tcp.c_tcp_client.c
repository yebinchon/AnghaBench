
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_ctx {int tc_fd; } ;
struct sockaddr_storage {int ss_len; } ;
struct sockaddr {int dummy; } ;


 int TCP_SIDE_CLIENT ;
 int bind (int ,struct sockaddr*,int ) ;
 int errno ;
 int tcp_addr (char const*,int ,struct sockaddr_storage*) ;
 int tcp_close (struct tcp_ctx*) ;
 int tcp_setup_new (char const*,int ,void**) ;

__attribute__((used)) static int
tcp_client(const char *srcaddr, const char *dstaddr, void **ctxp)
{
 struct tcp_ctx *tctx;
 struct sockaddr_storage sa;
 int ret;

 ret = tcp_setup_new(dstaddr, TCP_SIDE_CLIENT, ctxp);
 if (ret != 0)
  return (ret);
 tctx = *ctxp;
 if (srcaddr == ((void*)0))
  return (0);
 ret = tcp_addr(srcaddr, 0, &sa);
 if (ret != 0) {
  tcp_close(tctx);
  return (ret);
 }
 if (bind(tctx->tc_fd, (struct sockaddr *)&sa, sa.ss_len) == -1) {
  ret = errno;
  tcp_close(tctx);
  return (ret);
 }
 return (0);
}
