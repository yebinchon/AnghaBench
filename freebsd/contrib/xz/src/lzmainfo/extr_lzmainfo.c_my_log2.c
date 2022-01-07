
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
my_log2(uint32_t n)
{
 uint32_t e;
 for (e = 0; n > 1; ++e, n /= 2) ;
 return e;
}
