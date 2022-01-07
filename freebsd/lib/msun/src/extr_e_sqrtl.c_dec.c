
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int manh; int exp; int manl; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;


 int LDBL_NBIT ;

__attribute__((used)) static inline long double
dec(long double x)
{
 union IEEEl2bits u;

 u.e = x;
 if (u.bits.manl-- == 0) {
  if (u.bits.manh-- == LDBL_NBIT) {
   u.bits.exp--;
   u.bits.manh |= LDBL_NBIT;
  }
 }
 return (u.e);
}
