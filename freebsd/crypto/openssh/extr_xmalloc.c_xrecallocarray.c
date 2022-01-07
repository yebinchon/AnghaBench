
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*,size_t,size_t) ;
 void* recallocarray (void*,size_t,size_t,size_t) ;

void *
xrecallocarray(void *ptr, size_t onmemb, size_t nmemb, size_t size)
{
 void *new_ptr;

 new_ptr = recallocarray(ptr, onmemb, nmemb, size);
 if (new_ptr == ((void*)0))
  fatal("xrecallocarray: out of memory (%zu elements of %zu bytes)",
      nmemb, size);
 return new_ptr;
}
