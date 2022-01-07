
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;


 int NBBY ;
 long long ffsll (long long) ;

long long
__ctzdi2(long long x)
{
       if (x == 0)
               return (sizeof(x) * NBBY);
       return (ffsll(x) - 1);
}
