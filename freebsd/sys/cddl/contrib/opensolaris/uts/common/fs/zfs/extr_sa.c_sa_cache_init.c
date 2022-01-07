
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sa_handle_t ;


 int kmem_cache_create (char*,int,int ,int ,int ,int *,int *,int *,int ) ;
 int sa_cache ;
 int sa_cache_constructor ;
 int sa_cache_destructor ;

void
sa_cache_init(void)
{
 sa_cache = kmem_cache_create("sa_cache",
     sizeof (sa_handle_t), 0, sa_cache_constructor,
     sa_cache_destructor, ((void*)0), ((void*)0), ((void*)0), 0);
}
