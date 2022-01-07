
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int prof_tdata_t ;


 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int prof_tdata_destroy_locked (int *,int *,int) ;
 int tdatas_mtx ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
prof_tdata_destroy(tsd_t *tsd, prof_tdata_t *tdata, bool even_if_attached) {
 malloc_mutex_lock(tsd_tsdn(tsd), &tdatas_mtx);
 prof_tdata_destroy_locked(tsd, tdata, even_if_attached);
 malloc_mutex_unlock(tsd_tsdn(tsd), &tdatas_mtx);
}
