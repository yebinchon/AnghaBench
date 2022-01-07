
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * svc_ah_ops; } ;
struct TYPE_9__ {TYPE_1__ xp_auth; struct TYPE_9__* xp_p3; } ;
typedef TYPE_2__ SVCXPRT_EXT ;
typedef TYPE_2__ SVCXPRT ;


 TYPE_2__* mem_alloc (int) ;
 int mem_free (TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int svc_auth_null_ops ;

SVCXPRT *
svc_xprt_alloc(void)
{
 SVCXPRT *xprt;
 SVCXPRT_EXT *ext;

 xprt = mem_alloc(sizeof(SVCXPRT));
 if (xprt == ((void*)0))
  return (((void*)0));
 memset(xprt, 0, sizeof(SVCXPRT));
 ext = mem_alloc(sizeof(SVCXPRT_EXT));
 if (ext == ((void*)0)) {
  mem_free(xprt, sizeof(SVCXPRT));
  return (((void*)0));
 }
 memset(ext, 0, sizeof(SVCXPRT_EXT));
 xprt->xp_p3 = ext;
 ext->xp_auth.svc_ah_ops = &svc_auth_null_ops;

 return (xprt);
}
