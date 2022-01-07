
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static bool memeq(const void *a, const void *b, size_t size)
{
 const uint8_t *x = a;
 const uint8_t *y = b;
 size_t i;

 for (i = 0; i < size; ++i)
  if (x[i] != y[i])
   return 0;

 return 1;
}
