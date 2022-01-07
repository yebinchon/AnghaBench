
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static inline int64_t div64_s64_precise(int64_t a, int64_t b)
{
 int64_t r, al;

 al = a << 16;
 r = (al * 2 + 1) / (2 * b);
 return r >> 16;
}
