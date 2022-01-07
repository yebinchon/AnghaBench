
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int range_seg_t ;


 int ASSERT (int ) ;
 int * kmem_cache_create (char*,int,int ,int *,int *,int *,int *,int *,int ) ;
 int * range_seg_cache ;

void
range_tree_init(void)
{
 ASSERT(range_seg_cache == ((void*)0));
 range_seg_cache = kmem_cache_create("range_seg_cache",
     sizeof (range_seg_t), 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);
}
