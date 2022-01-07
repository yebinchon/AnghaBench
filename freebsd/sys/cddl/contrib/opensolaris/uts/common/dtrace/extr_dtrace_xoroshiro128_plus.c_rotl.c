
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static __inline uint64_t
rotl(const uint64_t x, int k)
{
 return (x << k) | (x >> (64 - k));
}
