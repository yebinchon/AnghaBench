
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cf_conn {scalar_t__ strm_stat; int xdrs; } ;
typedef enum xprt_stat { ____Placeholder_xprt_stat } xprt_stat ;
struct TYPE_3__ {scalar_t__ xp_p1; } ;
typedef TYPE_1__ SVCXPRT ;


 scalar_t__ XPRT_DIED ;
 int XPRT_IDLE ;
 int XPRT_MOREREQS ;
 int assert (int ) ;
 int xdrrec_eof (int *) ;

__attribute__((used)) static enum xprt_stat
svc_vc_stat(SVCXPRT *xprt)
{
 struct cf_conn *cd;

 assert(xprt != ((void*)0));

 cd = (struct cf_conn *)(xprt->xp_p1);

 if (cd->strm_stat == XPRT_DIED)
  return (XPRT_DIED);
 if (! xdrrec_eof(&(cd->xdrs)))
  return (XPRT_MOREREQS);
 return (XPRT_IDLE);
}
