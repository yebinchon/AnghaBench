
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_fp ;
typedef scalar_t__ s_fp ;


 int TRUE ;
 char* dofptoa (scalar_t__,int,short,int ) ;

char *
fptoms(
 s_fp fpv,
 short ndec
 )
{
 u_fp plusfp;
 int neg;

 neg = (fpv < 0);
 if (neg) {
  plusfp = (u_fp)(-fpv);
 } else {
  plusfp = (u_fp)fpv;
 }

 return dofptoa(plusfp, neg, ndec, TRUE);
}
