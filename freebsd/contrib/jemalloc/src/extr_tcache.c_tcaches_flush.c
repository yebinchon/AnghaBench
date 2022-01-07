
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int tcache_t ;


 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int tcache_destroy (int *,int *,int) ;
 int * tcaches ;
 int * tcaches_elm_remove (int *,int *) ;
 int tcaches_mtx ;
 int tsd_tsdn (int *) ;

void
tcaches_flush(tsd_t *tsd, unsigned ind) {
 malloc_mutex_lock(tsd_tsdn(tsd), &tcaches_mtx);
 tcache_t *tcache = tcaches_elm_remove(tsd, &tcaches[ind]);
 malloc_mutex_unlock(tsd_tsdn(tsd), &tcaches_mtx);
 if (tcache != ((void*)0)) {
  tcache_destroy(tsd, tcache, 0);
 }
}
