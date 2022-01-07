
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int (* xdrproc_t ) (TYPE_1__*,void*) ;
struct TYPE_7__ {int x_op; } ;
struct cf_conn {TYPE_1__ xdrs; } ;
typedef int bool_t ;
typedef TYPE_1__ XDR ;
struct TYPE_8__ {scalar_t__ xp_p1; } ;
typedef TYPE_3__ SVCXPRT ;


 int XDR_FREE ;
 int assert (int ) ;
 int stub1 (TYPE_1__*,void*) ;

__attribute__((used)) static bool_t
svc_vc_freeargs(SVCXPRT *xprt, xdrproc_t xdr_args, void *args_ptr)
{
 XDR *xdrs;

 assert(xprt != ((void*)0));


 xdrs = &(((struct cf_conn *)(xprt->xp_p1))->xdrs);

 xdrs->x_op = XDR_FREE;
 return ((*xdr_args)(xdrs, args_ptr));
}
