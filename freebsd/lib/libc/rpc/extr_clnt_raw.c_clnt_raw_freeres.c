
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ (* xdrproc_t ) (TYPE_1__*,void*) ;
struct TYPE_5__ {int x_op; } ;
struct clntraw_private {TYPE_1__ xdr_stream; } ;
typedef scalar_t__ bool_t ;
typedef TYPE_1__ XDR ;
typedef int CLIENT ;


 scalar_t__ RPC_FAILED ;
 int XDR_FREE ;
 int clntraw_lock ;
 struct clntraw_private* clntraw_private ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ stub1 (TYPE_1__*,void*) ;

__attribute__((used)) static bool_t
clnt_raw_freeres(CLIENT *cl, xdrproc_t xdr_res, void *res_ptr)
{
 struct clntraw_private *clp = clntraw_private;
 XDR *xdrs = &clp->xdr_stream;
 bool_t rval;

 mutex_lock(&clntraw_lock);
 if (clp == ((void*)0)) {
  rval = (bool_t) RPC_FAILED;
  mutex_unlock(&clntraw_lock);
  return (rval);
 }
 mutex_unlock(&clntraw_lock);
 xdrs->x_op = XDR_FREE;
 return ((*xdr_res)(xdrs, res_ptr));
}
