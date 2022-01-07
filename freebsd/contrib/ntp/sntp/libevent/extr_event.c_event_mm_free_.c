
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int mm_free_fn_ (void*) ;

void
event_mm_free_(void *ptr)
{
 if (mm_free_fn_)
  mm_free_fn_(ptr);
 else
  free(ptr);
}
