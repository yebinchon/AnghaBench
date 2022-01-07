
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double* aT ;

__attribute__((used)) static inline long double
T_even(long double x)
{

 return (aT[0] + x * (aT[2] + x * (aT[4] + x * (aT[6] + x * (aT[8] + x * (aT[10] + x * (aT[12] + x * (aT[14] + x * (aT[16] + x * (aT[18] + x * (aT[20] + x * aT[22])))))))))));


}
