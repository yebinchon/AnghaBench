
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KM_NOSLEEP ;
 int KM_NOWAIT ;
 int KM_SLEEP ;
 void* kmem_alloc (size_t,int ) ;

void *
kobj_alloc(size_t size, int flag)
{

 return (kmem_alloc(size, (flag & KM_NOWAIT) ? KM_NOSLEEP : KM_SLEEP));
}
