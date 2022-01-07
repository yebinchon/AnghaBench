
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * abd_chunk_cache ;
 int * abd_ksp ;
 int kmem_cache_destroy (int *) ;
 int kstat_delete (int *) ;

void
abd_fini(void)
{
 if (abd_ksp != ((void*)0)) {
  kstat_delete(abd_ksp);
  abd_ksp = ((void*)0);
 }

 kmem_cache_destroy(abd_chunk_cache);
 abd_chunk_cache = ((void*)0);
}
