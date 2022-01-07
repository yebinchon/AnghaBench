
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* mmalloc (void*,size_t) ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static void *
mrealloc (void *md, void *ptr, size_t size)
{
  if (ptr == 0)
    return mmalloc (md, size);
  else
    return realloc (ptr, size);
}
