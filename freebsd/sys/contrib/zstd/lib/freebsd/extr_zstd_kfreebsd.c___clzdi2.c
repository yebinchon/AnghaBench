
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;


 int NBBY ;
 long long flsll (long long) ;

long long
__clzdi2(long long x)
{
       return (sizeof(x) * NBBY - flsll(x));
}
