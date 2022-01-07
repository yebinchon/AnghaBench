
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bzero (void*,size_t) ;
 void* kobj_alloc (size_t,int) ;

void *
kobj_zalloc(size_t size, int flag)
{
 void *p;

 if ((p = kobj_alloc(size, flag)) != ((void*)0))
  bzero(p, size);
 return (p);
}
