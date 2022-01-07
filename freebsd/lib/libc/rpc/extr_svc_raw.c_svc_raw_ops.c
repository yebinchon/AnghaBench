
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
 int svc_raw_control ;
 int svc_raw_destroy ;
 int svc_raw_freeargs ;
 int svc_raw_getargs ;
 int * svc_raw_recv ;
 int svc_raw_reply ;
 int svc_raw_stat ;

__attribute__((used)) static void
svc_raw_ops(SVCXPRT *xprt)
{
 static struct xp_ops ops;
 static struct xp_ops2 ops2;



 mutex_lock(&ops_lock);
 if (ops.xp_recv == ((void*)0)) {
  ops.xp_recv = svc_raw_recv;
  ops.xp_stat = svc_raw_stat;
  ops.xp_getargs = svc_raw_getargs;
  ops.xp_reply = svc_raw_reply;
  ops.xp_freeargs = svc_raw_freeargs;
  ops.xp_destroy = svc_raw_destroy;
  ops2.xp_control = svc_raw_control;
 }
 xprt->xp_ops = &ops;
 xprt->xp_ops2 = &ops2;
 mutex_unlock(&ops_lock);
}
