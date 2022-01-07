
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int _scan_nan (int*,int,char const*) ;

double
nan(const char *s)
{
 union {
  double d;
  uint32_t bits[2];
 } u;

 _scan_nan(u.bits, 2, s);

 u.bits[1] |= 0x7ff80000;



 return (u.d);
}
