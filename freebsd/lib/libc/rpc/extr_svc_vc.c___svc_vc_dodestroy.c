
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct cf_rendezvous {int xdrs; } ;
struct cf_conn {int xdrs; } ;
struct TYPE_7__ {int maxlen; struct cf_rendezvous* buf; } ;
struct TYPE_6__ {int maxlen; struct cf_rendezvous* buf; } ;
struct TYPE_8__ {scalar_t__ xp_fd; scalar_t__ xp_port; int xp_netid; int xp_tp; TYPE_2__ xp_ltaddr; TYPE_1__ xp_rtaddr; scalar_t__ xp_p1; } ;
typedef TYPE_3__ SVCXPRT ;


 scalar_t__ RPC_ANYFD ;
 int XDR_DESTROY (int *) ;
 int _close (scalar_t__) ;
 int free (int ) ;
 int mem_free (struct cf_rendezvous*,int) ;
 int svc_xprt_free (TYPE_3__*) ;

__attribute__((used)) static void
__svc_vc_dodestroy(SVCXPRT *xprt)
{
 struct cf_conn *cd;
 struct cf_rendezvous *r;

 cd = (struct cf_conn *)xprt->xp_p1;

 if (xprt->xp_fd != RPC_ANYFD)
  (void)_close(xprt->xp_fd);
 if (xprt->xp_port != 0) {

  r = (struct cf_rendezvous *)xprt->xp_p1;
  mem_free(r, sizeof (struct cf_rendezvous));
  xprt->xp_port = 0;
 } else {

  XDR_DESTROY(&(cd->xdrs));
  mem_free(cd, sizeof(struct cf_conn));
 }
 if (xprt->xp_rtaddr.buf)
  mem_free(xprt->xp_rtaddr.buf, xprt->xp_rtaddr.maxlen);
 if (xprt->xp_ltaddr.buf)
  mem_free(xprt->xp_ltaddr.buf, xprt->xp_ltaddr.maxlen);
 free(xprt->xp_tp);
 free(xprt->xp_netid);
 svc_xprt_free(xprt);
}
