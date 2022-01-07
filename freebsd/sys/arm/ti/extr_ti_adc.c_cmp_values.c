
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static int
cmp_values(const void *a, const void *b)
{
 const uint32_t *v1, *v2;
 v1 = a;
 v2 = b;
 if (*v1 < *v2)
  return -1;
 if (*v1 > *v2)
  return 1;

 return (0);
}
