
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long bswap64 (long long) ;

long long
__bswapdi2(long long x)
{
 return (bswap64(x));
}
