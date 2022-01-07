
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; int manh; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;
typedef int uint32_t ;


 int _scan_nan (int *,int,char const*) ;

long double
nanl(const char *s)
{
 union {
  union IEEEl2bits ieee;
  uint32_t bits[3];
 } u;

 _scan_nan(u.bits, 3, s);
 u.ieee.bits.exp = 0x7fff;
 u.ieee.bits.manh |= 0xc0000000;
 return (u.ieee.e);
}
