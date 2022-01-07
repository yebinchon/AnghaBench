
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int km_flag_t ;


 void* malloc (size_t) ;

void *
kmem_alloc(size_t size, km_flag_t flags)
{
 return malloc(size);
}
