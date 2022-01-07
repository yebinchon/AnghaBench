
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* os_malloc (size_t) ;
 int os_memset (void*,int ,size_t) ;

void * os_zalloc(size_t size)
{
 void *n = os_malloc(size);
 if (n)
  os_memset(n, 0, size);
 return n;
}
