
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;


 int FLOAT64_MANGLE (int) ;

float64
__negdf2(float64 a)
{


 return a ^ FLOAT64_MANGLE(0x8000000000000000ULL);
}
