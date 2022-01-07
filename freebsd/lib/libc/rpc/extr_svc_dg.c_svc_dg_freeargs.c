
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* xdrproc_t ) (TYPE_1__*,void*) ;
typedef int bool_t ;
struct TYPE_6__ {int x_op; } ;
typedef TYPE_1__ XDR ;
struct TYPE_7__ {TYPE_1__ su_xdrs; } ;
typedef int SVCXPRT ;


 int XDR_FREE ;
 int stub1 (TYPE_1__*,void*) ;
 TYPE_4__* su_data (int *) ;

__attribute__((used)) static bool_t
svc_dg_freeargs(SVCXPRT *xprt, xdrproc_t xdr_args, void *args_ptr)
{
 XDR *xdrs = &(su_data(xprt)->su_xdrs);

 xdrs->x_op = XDR_FREE;
 return (*xdr_args)(xdrs, args_ptr);
}
