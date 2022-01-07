
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int *) ;
 int * range_seg_cache ;

void
range_tree_fini(void)
{
 kmem_cache_destroy(range_seg_cache);
 range_seg_cache = ((void*)0);
}
