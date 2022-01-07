
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;


 int M_ISNEG (int ) ;
 int M_NEG (int ,int ) ;
 int TRUE ;
 char* dolfptoa (int ,int ,int,short,int ) ;

char *
mfptoms(
 u_int32 fpi,
 u_int32 fpf,
 short ndec
 )
{
 int isneg;

 isneg = M_ISNEG(fpi);
 if (isneg) {
  M_NEG(fpi, fpf);
 }

 return dolfptoa(fpi, fpf, isneg, ndec, TRUE);
}
