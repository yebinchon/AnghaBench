
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;
typedef int flag ;


 int float64_eq (int ,int ) ;

flag
__unorddf2(float64 a, float64 b)
{






 return 1 ^ (float64_eq(a, a) & float64_eq(b, b));
}
