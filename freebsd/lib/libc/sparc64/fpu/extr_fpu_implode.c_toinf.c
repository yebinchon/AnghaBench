
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpemu {int fe_fsr; } ;


 int FSR_GET_RD (int ) ;





__attribute__((used)) static int
toinf(struct fpemu *fe, int sign)
{
 int inf;


 switch (FSR_GET_RD(fe->fe_fsr)) {
 default:
 case 131:
  inf = 1;
  break;

 case 128:
  inf = 0;
  break;

 case 129:
  inf = sign == 0;
  break;

 case 130:
  inf = sign;
  break;
 }
 return (inf);
}
