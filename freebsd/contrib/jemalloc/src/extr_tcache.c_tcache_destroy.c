
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsd_t ;
typedef void tcache_t ;
struct TYPE_4__ {scalar_t__ ncached_max; } ;
struct TYPE_3__ {scalar_t__ avail; } ;


 int idalloctm (int ,void*,int *,int *,int,int) ;
 int tcache_arena_dissociate (int ,void*) ;
 TYPE_2__* tcache_bin_info ;
 int tcache_flush_cache (int *,void*) ;
 TYPE_1__* tcache_small_bin_get (void*,int ) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
tcache_destroy(tsd_t *tsd, tcache_t *tcache, bool tsd_tcache) {
 tcache_flush_cache(tsd, tcache);
 tcache_arena_dissociate(tsd_tsdn(tsd), tcache);

 if (tsd_tcache) {

  void *avail_array =
      (void *)((uintptr_t)tcache_small_bin_get(tcache, 0)->avail -
      (uintptr_t)tcache_bin_info[0].ncached_max * sizeof(void *));
  idalloctm(tsd_tsdn(tsd), avail_array, ((void*)0), ((void*)0), 1, 1);
 } else {

  idalloctm(tsd_tsdn(tsd), tcache, ((void*)0), ((void*)0), 1, 1);
 }
}
