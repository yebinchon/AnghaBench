
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct authdes_verf {int adv_int_u; int adv_xtimestamp; } ;
typedef int des_block ;
typedef int caddr_t ;
typedef int bool_t ;
typedef int XDR ;


 int ATTEMPT (int ) ;
 int TRUE ;
 int xdr_opaque (int *,int ,int) ;

bool_t
xdr_authdes_verf(XDR *xdrs, struct authdes_verf *verf)
{



 ATTEMPT(xdr_opaque(xdrs, (caddr_t)&verf->adv_xtimestamp,
     sizeof(des_block)));
 ATTEMPT(xdr_opaque(xdrs, (caddr_t)&verf->adv_int_u,
     sizeof(verf->adv_int_u)));
 return (TRUE);
}
