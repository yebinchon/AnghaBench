
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct vax_double {int mantissa4; int mantissa3; int mantissa2; int mantissa1; void* exp; int sign; } ;
struct ieee_double {void* exp; int mantissa1; int mantissa2; int sign; } ;
struct dbl_limits {struct vax_double d; struct ieee_double ieee; } ;
typedef int int32_t ;
typedef int bool_t ;
struct TYPE_5__ {int x_op; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 void* IEEE_DBL_BIAS ;
 int MASK (int) ;
 int TRUE ;
 void* VAX_DBL_BIAS ;



 int XDR_GETINT32 (TYPE_1__*,int *) ;
 int XDR_PUTINT32 (TYPE_1__*,int *) ;
 struct dbl_limits* dbl_limits ;
 int nitems (struct dbl_limits*) ;

bool_t
xdr_double(XDR *xdrs, double *dp)
{




 int32_t *lp;
 struct ieee_double id;
 struct vax_double vd;
 struct dbl_limits *lim;
 u_int i;


 switch (xdrs->x_op) {

 case 129:
  vd = *((struct vax_double *)dp);
  for (i = 0, lim = dbl_limits; i < nitems(dbl_limits);
      i++, lim++) {
   if ((vd.mantissa4 == lim->d.mantissa4) &&
    (vd.mantissa3 == lim->d.mantissa3) &&
    (vd.mantissa2 == lim->d.mantissa2) &&
    (vd.mantissa1 == lim->d.mantissa1) &&
    (vd.exp == lim->d.exp)) {
    id = lim->ieee;
    goto shipit;
   }
  }
  id.exp = vd.exp - VAX_DBL_BIAS + IEEE_DBL_BIAS;
  id.mantissa1 = (vd.mantissa1 << 13) | (vd.mantissa2 >> 3);
  id.mantissa2 = ((vd.mantissa2 & MASK(3)) << 29) |
    (vd.mantissa3 << 13) |
    ((vd.mantissa4 >> 3) & MASK(13));
 shipit:
  id.sign = vd.sign;
  lp = (int32_t *)&id;
  return (XDR_PUTINT32(xdrs, lp++) && XDR_PUTINT32(xdrs, lp));


 case 130:
  lp = (int32_t *)&id;
  if (!XDR_GETINT32(xdrs, lp++) || !XDR_GETINT32(xdrs, lp))
   return (FALSE);
  for (i = 0, lim = dbl_limits; i < nitems(dbl_limits);
      i++, lim++) {
   if ((id.mantissa2 == lim->ieee.mantissa2) &&
    (id.mantissa1 == lim->ieee.mantissa1) &&
    (id.exp == lim->ieee.exp)) {
    vd = lim->d;
    goto doneit;
   }
  }
  vd.exp = id.exp - IEEE_DBL_BIAS + VAX_DBL_BIAS;
  vd.mantissa1 = (id.mantissa1 >> 13);
  vd.mantissa2 = ((id.mantissa1 & MASK(13)) << 3) |
    (id.mantissa2 >> 29);
  vd.mantissa3 = (id.mantissa2 >> 13);
  vd.mantissa4 = (id.mantissa2 << 3);
 doneit:
  vd.sign = id.sign;
  *dp = *((double *)&vd);
  return (TRUE);


 case 128:
  return (TRUE);
 }

 return (FALSE);
}
