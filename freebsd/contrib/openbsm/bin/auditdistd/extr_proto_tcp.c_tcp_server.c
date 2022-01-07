
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
struct TYPE_2__ {scalar_t__ ss_family; } ;
struct tcp_ctx {int tc_fd; TYPE_1__ tc_sa; } ;
struct sockaddr {int dummy; } ;


 scalar_t__ AF_UNSPEC ;
 int PJDLOG_ASSERT (int) ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int TCP_SIDE_SERVER_LISTEN ;
 int bind (int ,struct sockaddr*,int ) ;
 int errno ;
 int listen (int ,int) ;
 int setsockopt (int ,int ,int ,int*,int) ;
 int sockaddr_len (TYPE_1__*) ;
 int tcp_close (struct tcp_ctx*) ;
 int tcp_setup_new (char const*,int ,struct tcp_ctx**) ;

__attribute__((used)) static int
tcp_server(const char *addr, void **ctxp)
{
 struct tcp_ctx *tctx;
 int error, val;

 error = tcp_setup_new(addr, TCP_SIDE_SERVER_LISTEN, &tctx);
 if (error != 0)
  return (error);

 val = 1;

 (void)setsockopt(tctx->tc_fd, SOL_SOCKET, SO_REUSEADDR, &val,
    sizeof(val));

 PJDLOG_ASSERT(tctx->tc_sa.ss_family != AF_UNSPEC);

 if (bind(tctx->tc_fd, (struct sockaddr *)&tctx->tc_sa,
     sockaddr_len(&tctx->tc_sa)) == -1) {
  error = errno;
  tcp_close(tctx);
  return (error);
 }
 if (listen(tctx->tc_fd, 8) == -1) {
  error = errno;
  tcp_close(tctx);
  return (error);
 }

 *ctxp = tctx;

 return (0);
}
