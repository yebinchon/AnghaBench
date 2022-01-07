
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; int manh; int manl; size_t sign; } ;
union IEEEd2bits {double d; TYPE_1__ bits; } ;



double
fmax(double x, double y)
{
 union IEEEd2bits u[2];

 u[0].d = x;
 u[1].d = y;


 if (u[0].bits.exp == 2047 && (u[0].bits.manh | u[0].bits.manl) != 0)
  return (y);
 if (u[1].bits.exp == 2047 && (u[1].bits.manh | u[1].bits.manl) != 0)
  return (x);


 if (u[0].bits.sign != u[1].bits.sign)
  return (u[u[0].bits.sign].d);

 return (x > y ? x : y);
}
