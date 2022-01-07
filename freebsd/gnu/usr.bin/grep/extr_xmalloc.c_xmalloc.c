
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 int xalloc_die () ;

void *
xmalloc (size_t n)
{
  void *p;

  p = malloc (n);
  if (p == 0)
    xalloc_die ();
  return p;
}
