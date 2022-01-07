
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef scalar_t__ rpcbs_proc ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int RPCBSTAT_HIGHPROC ;
 int TRUE ;
 scalar_t__ xdr_int ;
 int xdr_vector (int *,char*,int ,int,int ) ;

bool_t
xdr_rpcbs_proc(XDR *xdrs, rpcbs_proc objp)
{
 if (!xdr_vector(xdrs, (char *)(void *)objp, RPCBSTAT_HIGHPROC,
     sizeof (int), (xdrproc_t)xdr_int)) {
  return (FALSE);
 }
 return (TRUE);
}
