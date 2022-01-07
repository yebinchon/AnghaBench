
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bool_t ;
typedef int XDR ;


 int RPC_MAXDATASIZE ;
 int xdr_string (int *,char**,int ) ;

bool_t
xdr_wrapstring(XDR *xdrs, char **cpp)
{
 return xdr_string(xdrs, cpp, RPC_MAXDATASIZE);
}
