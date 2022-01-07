
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* mcalloc (void*,size_t,size_t) ;
 int nomem (size_t) ;

void *
xmcalloc (void *md, size_t number, size_t size)
{
  void *mem;



  if (number == 0 || size == 0)
    {
      number = 1;
      size = 1;
    }

  mem = mcalloc (md, number, size);
  if (mem == ((void*)0))
    nomem (number * size);

  return mem;
}
