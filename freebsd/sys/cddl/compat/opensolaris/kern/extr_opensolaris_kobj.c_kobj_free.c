
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_free (void*,size_t) ;

void
kobj_free(void *address, size_t size)
{

 kmem_free(address, size);
}
