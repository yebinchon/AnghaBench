
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int (* xdrproc_t ) (TYPE_1__*,void*) ;
struct TYPE_5__ {int x_op; } ;
struct svc_raw_private {TYPE_1__ xdr_stream; } ;
typedef int bool_t ;
typedef TYPE_1__ XDR ;
typedef int SVCXPRT ;


 int FALSE ;
 int XDR_FREE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_1__*,void*) ;
 struct svc_raw_private* svc_raw_private ;
 int svcraw_lock ;

__attribute__((used)) static bool_t
svc_raw_freeargs(SVCXPRT *xprt, xdrproc_t xdr_args, void *args_ptr)
{
 struct svc_raw_private *srp;
 XDR *xdrs;

 mutex_lock(&svcraw_lock);
 srp = svc_raw_private;
 if (srp == ((void*)0)) {
  mutex_unlock(&svcraw_lock);
  return (FALSE);
 }
 mutex_unlock(&svcraw_lock);

 xdrs = &srp->xdr_stream;
 xdrs->x_op = XDR_FREE;
 return (*xdr_args)(xdrs, args_ptr);
}
