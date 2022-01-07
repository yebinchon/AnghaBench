
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ p ;


 scalar_t__ ntohl (int const) ;

__attribute__((used)) static inline uint64_t
EXTRACT_64BITS(const void *p)
{
 return ((uint64_t)(((uint64_t)ntohl(*((const uint32_t *)(p) + 0))) << 32 | ((uint64_t)ntohl(*((const uint32_t *)(p) + 1))) << 0));


}
