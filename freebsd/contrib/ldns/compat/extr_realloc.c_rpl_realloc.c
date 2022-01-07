
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 void* realloc (void*,size_t) ;

void *
rpl_realloc (void* ptr, size_t n)
{
  if (n == 0)
    n = 1;
  if(ptr == 0) {
    return malloc(n);
  }
  return realloc(ptr, n);
}
