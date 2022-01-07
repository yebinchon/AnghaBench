
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ss_family; } ;
struct tcp_ctx {int tc_fd; int tc_wait_called; int tc_side; int tc_magic; TYPE_1__ tc_sa; } ;
typedef int nodelay ;


 scalar_t__ AF_UNSPEC ;
 int IPPROTO_TCP ;
 int LOG_WARNING ;
 int PJDLOG_ASSERT (int) ;
 int SOCK_STREAM ;
 int TCP_CTX_MAGIC ;
 int TCP_NODELAY ;
 int TCP_SIDE_CLIENT ;
 int TCP_SIDE_SERVER_LISTEN ;
 int atoi (int ) ;
 int errno ;
 int free (struct tcp_ctx*) ;
 struct tcp_ctx* malloc (int) ;
 int pjdlog_errno (int ,char*) ;
 int proto_get (char*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (scalar_t__,int ,int ) ;
 int tcp_addr (char const*,int ,TYPE_1__*) ;

__attribute__((used)) static int
tcp_setup_new(const char *addr, int side, struct tcp_ctx **tctxp)
{
 struct tcp_ctx *tctx;
 int error, nodelay;

 PJDLOG_ASSERT(addr != ((void*)0));
 PJDLOG_ASSERT(side == TCP_SIDE_CLIENT ||
     side == TCP_SIDE_SERVER_LISTEN);
 PJDLOG_ASSERT(tctxp != ((void*)0));

 tctx = malloc(sizeof(*tctx));
 if (tctx == ((void*)0))
  return (errno);


 error = tcp_addr(addr, atoi(proto_get("tcp:port")), &tctx->tc_sa);
 if (error != 0) {
  free(tctx);
  return (error);
 }

 PJDLOG_ASSERT(tctx->tc_sa.ss_family != AF_UNSPEC);

 tctx->tc_fd = socket(tctx->tc_sa.ss_family, SOCK_STREAM, 0);
 if (tctx->tc_fd == -1) {
  error = errno;
  free(tctx);
  return (error);
 }

 PJDLOG_ASSERT(tctx->tc_sa.ss_family != AF_UNSPEC);


 nodelay = 1;
 if (setsockopt(tctx->tc_fd, IPPROTO_TCP, TCP_NODELAY, &nodelay,
     sizeof(nodelay)) == -1) {
  pjdlog_errno(LOG_WARNING, "Unable to set TCP_NOELAY");
 }

 tctx->tc_wait_called = (side == TCP_SIDE_CLIENT ? 0 : 1);
 tctx->tc_side = side;
 tctx->tc_magic = TCP_CTX_MAGIC;
 *tctxp = tctx;

 return (0);
}
