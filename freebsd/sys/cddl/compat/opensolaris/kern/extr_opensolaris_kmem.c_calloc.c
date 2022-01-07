
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KM_NOSLEEP ;
 void* kmem_zalloc (size_t,int ) ;

void *
calloc(size_t n, size_t s)
{
 return (kmem_zalloc(n * s, KM_NOSLEEP));
}
