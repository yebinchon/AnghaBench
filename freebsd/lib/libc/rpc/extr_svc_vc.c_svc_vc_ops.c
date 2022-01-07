
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xp_ops2 {int xp_control; } ;
struct xp_ops {int xp_destroy; int xp_freeargs; int xp_reply; int xp_getargs; int xp_stat; int * xp_recv; } ;
struct TYPE_3__ {struct xp_ops2* xp_ops2; struct xp_ops* xp_ops; } ;
typedef TYPE_1__ SVCXPRT ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ops_lock ;
 int svc_vc_control ;
 int svc_vc_destroy ;
 int svc_vc_freeargs ;
 int svc_vc_getargs ;
 int * svc_vc_recv ;
 int svc_vc_reply ;
 int svc_vc_stat ;

__attribute__((used)) static void
svc_vc_ops(SVCXPRT *xprt)
{
 static struct xp_ops ops;
 static struct xp_ops2 ops2;



 mutex_lock(&ops_lock);
 if (ops.xp_recv == ((void*)0)) {
  ops.xp_recv = svc_vc_recv;
  ops.xp_stat = svc_vc_stat;
  ops.xp_getargs = svc_vc_getargs;
  ops.xp_reply = svc_vc_reply;
  ops.xp_freeargs = svc_vc_freeargs;
  ops.xp_destroy = svc_vc_destroy;
  ops2.xp_control = svc_vc_control;
 }
 xprt->xp_ops = &ops;
 xprt->xp_ops2 = &ops2;
 mutex_unlock(&ops_lock);
}
