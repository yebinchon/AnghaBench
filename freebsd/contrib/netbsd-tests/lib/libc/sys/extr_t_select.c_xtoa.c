
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xarray ;
typedef int uint8_t ;


 int assert (int) ;

__attribute__((used)) static char
xtoa(uint8_t n)
{
 static const char xarray[] = "0123456789abcdef";
 assert(n < sizeof(xarray));
 return xarray[n];
}
