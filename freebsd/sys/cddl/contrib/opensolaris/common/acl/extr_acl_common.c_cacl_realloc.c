
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KM_SLEEP ;
 void* kmem_alloc (size_t,int ) ;
 int kmem_free (void*,size_t) ;
 int memcpy (void*,void*,size_t) ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static void *
cacl_realloc(void *ptr, size_t size, size_t new_size)
{
 return (realloc(ptr, new_size));

}
