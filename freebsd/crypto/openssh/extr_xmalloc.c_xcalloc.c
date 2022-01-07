
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SIZE_MAX ;
 void* calloc (size_t,size_t) ;
 int fatal (char*,...) ;

void *
xcalloc(size_t nmemb, size_t size)
{
 void *ptr;

 if (size == 0 || nmemb == 0)
  fatal("xcalloc: zero size");
 if (SIZE_MAX / nmemb < size)
  fatal("xcalloc: nmemb * size > SIZE_MAX");
 ptr = calloc(nmemb, size);
 if (ptr == ((void*)0))
  fatal("xcalloc: out of memory (allocating %zu bytes)",
      size * nmemb);
 return ptr;
}
