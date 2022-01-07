
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SVCXPRT ;


 int AUTH_TOOWEAK ;
 int assert (int ) ;
 int svcerr_auth (int *,int ) ;

void
svcerr_weakauth(SVCXPRT *xprt)
{

 assert(xprt != ((void*)0));

 svcerr_auth(xprt, AUTH_TOOWEAK);
}
