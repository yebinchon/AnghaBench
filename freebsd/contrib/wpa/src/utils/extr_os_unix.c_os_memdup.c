
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* os_malloc (size_t) ;
 int os_memcpy (void*,void const*,size_t) ;

void * os_memdup(const void *src, size_t len)
{
 void *r = os_malloc(len);

 if (r && src)
  os_memcpy(r, src, len);
 return r;
}
