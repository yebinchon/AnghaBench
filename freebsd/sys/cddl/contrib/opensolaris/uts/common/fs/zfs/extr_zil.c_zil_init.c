
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zil_commit_waiter_t ;
typedef int lwb_t ;


 void* kmem_cache_create (char*,int,int ,int *,int *,int *,int *,int *,int ) ;
 void* zil_lwb_cache ;
 int * zil_lwb_cons ;
 int * zil_lwb_dest ;
 void* zil_zcw_cache ;

void
zil_init(void)
{
 zil_lwb_cache = kmem_cache_create("zil_lwb_cache",
     sizeof (lwb_t), 0, zil_lwb_cons, zil_lwb_dest, ((void*)0), ((void*)0), ((void*)0), 0);

 zil_zcw_cache = kmem_cache_create("zil_zcw_cache",
     sizeof (zil_commit_waiter_t), 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);
}
