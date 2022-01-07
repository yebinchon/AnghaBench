
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (void*,void const*,size_t) ;

void *memmove(void *dest, const void *src, size_t n)
{
 uint8_t* from = (uint8_t*) src;
 uint8_t* to = (uint8_t*) dest;

 if (from == to || n == 0)
  return dest;
 if (to > from && to-from < (int)n) {




  int i;
  for(i=n-1; i>=0; i--)
   to[i] = from[i];
  return dest;
 }
 if (from > to && from-to < (int)n) {




  size_t i;
  for(i=0; i<n; i++)
   to[i] = from[i];
  return dest;
 }
 memcpy(dest, src, n);
 return dest;
}
