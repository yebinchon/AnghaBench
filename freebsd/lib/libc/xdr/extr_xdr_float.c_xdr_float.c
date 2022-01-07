
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct vax_single {int mantissa2; void* exp; int mantissa1; int sign; } ;
struct ieee_single {void* exp; int mantissa; int sign; } ;
struct sgl_limits {struct vax_single s; struct ieee_single ieee; } ;
typedef int int32_t ;
typedef int bool_t ;
struct TYPE_5__ {int x_op; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 void* IEEE_SNG_BIAS ;
 int TRUE ;
 void* VAX_SNG_BIAS ;



 int XDR_GETINT32 (TYPE_1__*,int *) ;
 int XDR_PUTINT32 (TYPE_1__*,int *) ;
 int nitems (struct sgl_limits*) ;
 struct sgl_limits* sgl_limits ;

bool_t
xdr_float(XDR *xdrs, float *fp)
{

 struct ieee_single is;
 struct vax_single vs, *vsp;
 struct sgl_limits *lim;
 u_int i;

 switch (xdrs->x_op) {

 case 129:



  vs = *((struct vax_single *)fp);
  for (i = 0, lim = sgl_limits; i < nitems(sgl_limits);
      i++, lim++) {
   if ((vs.mantissa2 == lim->s.mantissa2) &&
    (vs.exp == lim->s.exp) &&
    (vs.mantissa1 == lim->s.mantissa1)) {
    is = lim->ieee;
    goto shipit;
   }
  }
  is.exp = vs.exp - VAX_SNG_BIAS + IEEE_SNG_BIAS;
  is.mantissa = (vs.mantissa1 << 16) | vs.mantissa2;
 shipit:
  is.sign = vs.sign;
  return (XDR_PUTINT32(xdrs, (int32_t *)&is));


 case 130:



  vsp = (struct vax_single *)fp;
  if (!XDR_GETINT32(xdrs, (int32_t *)&is))
   return (FALSE);
  for (i = 0, lim = sgl_limits; i < nitems(sgl_limits);
      i++, lim++) {
   if ((is.exp == lim->ieee.exp) &&
    (is.mantissa == lim->ieee.mantissa)) {
    *vsp = lim->s;
    goto doneit;
   }
  }
  vsp->exp = is.exp - IEEE_SNG_BIAS + VAX_SNG_BIAS;
  vsp->mantissa2 = is.mantissa;
  vsp->mantissa1 = (is.mantissa >> 16);
 doneit:
  vsp->sign = is.sign;
  return (TRUE);


 case 128:
  return (TRUE);
 }

 return (FALSE);
}
