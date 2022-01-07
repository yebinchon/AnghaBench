
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* mm_realloc_fn_ (void*,size_t) ;
 void* realloc (void*,size_t) ;

void *
event_mm_realloc_(void *ptr, size_t sz)
{
 if (mm_realloc_fn_)
  return mm_realloc_fn_(ptr, sz);
 else
  return realloc(ptr, sz);
}
