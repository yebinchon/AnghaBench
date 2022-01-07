
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int _scan_nan (int*,int,char const*) ;

float
nanf(const char *s)
{
 union {
  float f;
  uint32_t bits[1];
 } u;

 _scan_nan(u.bits, 1, s);
 u.bits[0] |= 0x7fc00000;
 return (u.f);
}
