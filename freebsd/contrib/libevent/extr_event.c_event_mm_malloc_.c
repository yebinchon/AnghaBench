
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 void* mm_malloc_fn_ (size_t) ;

void *
event_mm_malloc_(size_t sz)
{
 if (sz == 0)
  return ((void*)0);

 if (mm_malloc_fn_)
  return mm_malloc_fn_(sz);
 else
  return malloc(sz);
}
