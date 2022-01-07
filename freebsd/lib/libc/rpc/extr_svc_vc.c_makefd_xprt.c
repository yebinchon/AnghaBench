
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int ;
struct cf_conn {int verf_body; int xdrs; int strm_stat; } ;
struct __rpc_sockinfo {int dummy; } ;
struct TYPE_9__ {int oa_base; } ;
struct TYPE_10__ {int xp_fd; int xp_netid; scalar_t__ xp_port; TYPE_1__ xp_verf; struct cf_conn* xp_p1; } ;
typedef TYPE_2__ SVCXPRT ;


 int XPRT_IDLE ;
 scalar_t__ __rpc_fd2sockinfo (int,struct __rpc_sockinfo*) ;
 scalar_t__ __rpc_sockinfo2netid (struct __rpc_sockinfo*,char const**) ;
 int assert (int) ;
 struct cf_conn* mem_alloc (int) ;
 int read_vc ;
 int strdup (char const*) ;
 int svc_vc_ops (TYPE_2__*) ;
 TYPE_2__* svc_xprt_alloc () ;
 int svc_xprt_free (TYPE_2__*) ;
 int warnx (char*) ;
 int write_vc ;
 int xdrrec_create (int *,int ,int ,TYPE_2__*,int ,int ) ;
 int xprt_register (TYPE_2__*) ;

__attribute__((used)) static SVCXPRT *
makefd_xprt(int fd, u_int sendsize, u_int recvsize)
{
 SVCXPRT *xprt;
 struct cf_conn *cd;
 const char *netid;
 struct __rpc_sockinfo si;

 assert(fd != -1);

 xprt = svc_xprt_alloc();
 if (xprt == ((void*)0)) {
  warnx("svc_vc: makefd_xprt: out of memory");
  goto done;
 }
 cd = mem_alloc(sizeof(struct cf_conn));
 if (cd == ((void*)0)) {
  warnx("svc_tcp: makefd_xprt: out of memory");
  svc_xprt_free(xprt);
  xprt = ((void*)0);
  goto done;
 }
 cd->strm_stat = XPRT_IDLE;
 xdrrec_create(&(cd->xdrs), sendsize, recvsize,
     xprt, read_vc, write_vc);
 xprt->xp_p1 = cd;
 xprt->xp_verf.oa_base = cd->verf_body;
 svc_vc_ops(xprt);
 xprt->xp_port = 0;
 xprt->xp_fd = fd;
        if (__rpc_fd2sockinfo(fd, &si) && __rpc_sockinfo2netid(&si, &netid))
  xprt->xp_netid = strdup(netid);

 xprt_register(xprt);
done:
 return (xprt);
}
