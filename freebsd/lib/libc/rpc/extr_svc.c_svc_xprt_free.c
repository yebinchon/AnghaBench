
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* xp_p3; } ;
typedef int SVCXPRT_EXT ;
typedef TYPE_1__ SVCXPRT ;


 int mem_free (TYPE_1__*,int) ;

void
svc_xprt_free(SVCXPRT *xprt)
{

 mem_free(xprt->xp_p3, sizeof(SVCXPRT_EXT));
 mem_free(xprt, sizeof(SVCXPRT));
}
