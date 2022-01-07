
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double* aT ;

__attribute__((used)) static inline long double
T_odd(long double x)
{

 return (aT[1] + x * (aT[3] + x * (aT[5] + x * (aT[7] + x * (aT[9] + x * (aT[11] + x * (aT[13] + x * (aT[15] + x * (aT[17] + x * (aT[19] + x * (aT[21] + x * aT[23])))))))))));


}
