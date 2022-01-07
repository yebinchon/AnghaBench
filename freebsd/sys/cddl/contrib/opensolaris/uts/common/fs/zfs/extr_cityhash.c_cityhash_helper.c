
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static inline uint64_t
cityhash_helper(uint64_t u, uint64_t v, uint64_t mul)
{
 uint64_t a = (u ^ v) * mul;
 a ^= (a >> 47);
 uint64_t b = (v ^ a) * mul;
 b ^= (b >> 47);
 b *= mul;
 return (b);
}
