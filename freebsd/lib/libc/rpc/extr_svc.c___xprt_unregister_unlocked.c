
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SVCXPRT ;


 int FALSE ;
 int __xprt_do_unregister (int *,int ) ;

void
__xprt_unregister_unlocked(SVCXPRT *xprt)
{
 __xprt_do_unregister(xprt, FALSE);
}
