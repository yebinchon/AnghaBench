
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bswap32 (int) ;

int
__bswapsi2(int x)
{
 return (bswap32(x));
}
