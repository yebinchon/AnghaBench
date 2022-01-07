
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*,...) ;
 void* malloc (size_t) ;

void *
xmalloc(size_t size)
{
 void *ptr;

 if (size == 0)
  fatal("xmalloc: zero size");
 ptr = malloc(size);
 if (ptr == ((void*)0))
  fatal("xmalloc: out of memory (allocating %zu bytes)", size);
 return ptr;
}
