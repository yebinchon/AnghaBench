
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SVCXPRT ;


 int __svc_vc_dodestroy (int *) ;
 int assert (int ) ;
 int xprt_unregister (int *) ;

__attribute__((used)) static void
svc_vc_destroy(SVCXPRT *xprt)
{
 assert(xprt != ((void*)0));

 xprt_unregister(xprt);
 __svc_vc_dodestroy(xprt);
}
