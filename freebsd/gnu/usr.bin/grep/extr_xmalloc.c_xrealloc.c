
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* realloc (void*,size_t) ;
 int xalloc_die () ;

void *
xrealloc (void *p, size_t n)
{
  p = realloc (p, n);
  if (p == 0)
    xalloc_die ();
  return p;
}
