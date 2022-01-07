
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static int
cmp_keys(const void *a_, const void *b_)
{
 uint32_t a = *(const uint32_t *)a_;
 uint32_t b = *(const uint32_t *)b_;

 return a > b ? 1 : (a < b ? 1 : 0);
}
