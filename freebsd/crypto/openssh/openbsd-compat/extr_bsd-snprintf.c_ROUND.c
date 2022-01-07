
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double LLONG ;
typedef double LDOUBLE ;



__attribute__((used)) static LLONG ROUND(LDOUBLE value)
{
 LLONG intpart;

 intpart = (LLONG)value;
 value = value - intpart;
 if (value >= 0.5) intpart++;

 return intpart;
}
