
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abd_chunk_cache ;
 int kmem_cache_free (int ,void*) ;

__attribute__((used)) static void
abd_free_chunk(void *c)
{
 kmem_cache_free(abd_chunk_cache, c);
}
