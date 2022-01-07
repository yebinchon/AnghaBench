
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint128_t ;



__attribute__((used)) static __inline uint128_t
to128(void *p)
{
 return *(uint128_t *)p;
}
