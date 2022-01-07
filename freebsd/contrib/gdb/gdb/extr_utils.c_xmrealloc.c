
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* mmalloc (void*,size_t) ;
 void* mrealloc (void*,void*,size_t) ;
 int nomem (size_t) ;

void *
xmrealloc (void *md, void *ptr, size_t size)
{
  void *val;



  if (size == 0)
    size = 1;

  if (ptr != ((void*)0))
    val = mrealloc (md, ptr, size);
  else
    val = mmalloc (md, size);
  if (val == ((void*)0))
    nomem (size);

  return (val);
}
