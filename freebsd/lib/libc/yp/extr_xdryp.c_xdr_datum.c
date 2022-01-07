
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int dsize; int dptr; } ;
typedef TYPE_1__ datum ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int YPMAXRECORD ;
 int xdr_bytes (int *,char**,int *,int ) ;

bool_t
xdr_datum(XDR *xdrs, datum *objp)
{
 if (!xdr_bytes(xdrs, (char **)&objp->dptr, (u_int *)&objp->dsize, YPMAXRECORD)) {
  return (FALSE);
 }
 return (TRUE);
}
