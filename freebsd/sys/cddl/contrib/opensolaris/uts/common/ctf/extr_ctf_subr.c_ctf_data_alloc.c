
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KM_NOWAIT ;
 int KM_SCRATCH ;
 void* MAP_FAILED ;
 void* kobj_alloc (size_t,int) ;

void *
ctf_data_alloc(size_t size)
{
 void *buf = kobj_alloc(size, KM_NOWAIT|KM_SCRATCH);

 if (buf == ((void*)0))
  return (MAP_FAILED);

 return (buf);
}
