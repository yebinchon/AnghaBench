
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int tsd_t ;
typedef int prof_tdata_t ;


 int assert (int) ;
 size_t lg_prof_sample ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int prof_dump_mtx ;
 int prof_tdata_destroy_locked (int *,int *,int) ;
 int prof_tdata_reset_iter ;
 int * tdata_tree_iter (int *,int *,int ,void*) ;
 int * tdata_tree_next (int *,int *) ;
 int tdatas ;
 int tdatas_mtx ;
 int tsd_tsdn (int *) ;

void
prof_reset(tsd_t *tsd, size_t lg_sample) {
 prof_tdata_t *next;

 assert(lg_sample < (sizeof(uint64_t) << 3));

 malloc_mutex_lock(tsd_tsdn(tsd), &prof_dump_mtx);
 malloc_mutex_lock(tsd_tsdn(tsd), &tdatas_mtx);

 lg_prof_sample = lg_sample;

 next = ((void*)0);
 do {
  prof_tdata_t *to_destroy = tdata_tree_iter(&tdatas, next,
      prof_tdata_reset_iter, (void *)tsd);
  if (to_destroy != ((void*)0)) {
   next = tdata_tree_next(&tdatas, to_destroy);
   prof_tdata_destroy_locked(tsd, to_destroy, 0);
  } else {
   next = ((void*)0);
  }
 } while (next != ((void*)0));

 malloc_mutex_unlock(tsd_tsdn(tsd), &tdatas_mtx);
 malloc_mutex_unlock(tsd_tsdn(tsd), &prof_dump_mtx);
}
