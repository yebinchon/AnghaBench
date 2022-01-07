
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int explicit_bzero (void*,size_t) ;
 int free (void*) ;

void
freezero(void *ptr, size_t sz)
{
 if (ptr == ((void*)0))
  return;
 explicit_bzero(ptr, sz);
 free(ptr);
}
