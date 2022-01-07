
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; scalar_t__ manl; scalar_t__ manh; } ;
union IEEEd2bits {double d; TYPE_1__ bits; } ;



int
isnan(double d)
{
 union IEEEd2bits u;

 u.d = d;
 return (u.bits.exp == 2047 && (u.bits.manl != 0 || u.bits.manh != 0));
}
