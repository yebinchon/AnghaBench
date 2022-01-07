
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; scalar_t__ man; size_t sign; } ;
union IEEEf2bits {float f; TYPE_1__ bits; } ;



float
fmaxf(float x, float y)
{
 union IEEEf2bits u[2];

 u[0].f = x;
 u[1].f = y;


 if (u[0].bits.exp == 255 && u[0].bits.man != 0)
  return (y);
 if (u[1].bits.exp == 255 && u[1].bits.man != 0)
  return (x);


 if (u[0].bits.sign != u[1].bits.sign)
  return (u[u[0].bits.sign].f);

 return (x > y ? x : y);
}
