
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef scalar_t__ rpcb_stat_byvers ;
typedef int rpcb_stat ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int RPCBVERS_STAT ;
 int TRUE ;
 scalar_t__ xdr_rpcb_stat ;
 int xdr_vector (int *,char*,int ,int,int ) ;

bool_t
xdr_rpcb_stat_byvers(XDR *xdrs, rpcb_stat_byvers objp)
{
 if (!xdr_vector(xdrs, (char *)(void *)objp, RPCBVERS_STAT,
     sizeof (rpcb_stat), (xdrproc_t)xdr_rpcb_stat)) {
  return (FALSE);
 }
 return (TRUE);
}
