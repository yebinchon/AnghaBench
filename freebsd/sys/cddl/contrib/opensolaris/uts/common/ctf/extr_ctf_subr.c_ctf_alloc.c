
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KM_NOWAIT ;
 int KM_TMP ;
 void* kobj_alloc (size_t,int) ;

void *
ctf_alloc(size_t size)
{
 return (kobj_alloc(size, KM_NOWAIT|KM_TMP));
}
