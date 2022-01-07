
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int kmem_free (void*,size_t) ;

__attribute__((used)) static void
cacl_free(void *ptr, size_t size)
{



 free(ptr);

}
