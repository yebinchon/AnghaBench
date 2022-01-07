
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int htons (int) ;

u_int32_t
wrapsum(u_int32_t sum)
{
 sum = ~sum & 0xFFFF;
 return (htons(sum));
}
