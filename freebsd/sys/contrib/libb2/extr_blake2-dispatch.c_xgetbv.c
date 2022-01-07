
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint64_t xgetbv(uint32_t xcr)
{
  uint32_t a, d;
  __asm__ __volatile__(
    "xgetbv"
    : "=a"(a),"=d"(d)
    : "c"(xcr)
  );
  return ((uint64_t)d << 32) | a;
}
