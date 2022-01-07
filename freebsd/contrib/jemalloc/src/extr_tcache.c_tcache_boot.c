
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_4__ {int ncached_max; } ;
typedef TYPE_1__ cache_bin_info_t ;
struct TYPE_5__ {int nregs; } ;


 int CACHELINE ;
 unsigned int NBINS ;
 int SMALL_MAXCLASS ;
 int TCACHE_NSLOTS_LARGE ;
 int TCACHE_NSLOTS_SMALL_MAX ;
 int TCACHE_NSLOTS_SMALL_MIN ;
 int WITNESS_RANK_TCACHES ;
 int ZU (int) ;
 int b0get () ;
 scalar_t__ base_alloc (int *,int ,int,int ) ;
 TYPE_3__* bin_infos ;
 scalar_t__ malloc_mutex_init (int *,char*,int ,int ) ;
 int malloc_mutex_rank_exclusive ;
 int nhbins ;
 int opt_lg_tcache_max ;
 scalar_t__ stack_nelms ;
 int sz_size2index (int) ;
 TYPE_1__* tcache_bin_info ;
 int tcache_maxclass ;
 int tcaches_mtx ;

bool
tcache_boot(tsdn_t *tsdn) {

 if (opt_lg_tcache_max < 0 || (ZU(1) << opt_lg_tcache_max) <
     SMALL_MAXCLASS) {
  tcache_maxclass = SMALL_MAXCLASS;
 } else {
  tcache_maxclass = (ZU(1) << opt_lg_tcache_max);
 }

 if (malloc_mutex_init(&tcaches_mtx, "tcaches", WITNESS_RANK_TCACHES,
     malloc_mutex_rank_exclusive)) {
  return 1;
 }

 nhbins = sz_size2index(tcache_maxclass) + 1;


 tcache_bin_info = (cache_bin_info_t *)base_alloc(tsdn, b0get(), nhbins
     * sizeof(cache_bin_info_t), CACHELINE);
 if (tcache_bin_info == ((void*)0)) {
  return 1;
 }
 stack_nelms = 0;
 unsigned i;
 for (i = 0; i < NBINS; i++) {
  if ((bin_infos[i].nregs << 1) <= TCACHE_NSLOTS_SMALL_MIN) {
   tcache_bin_info[i].ncached_max =
       TCACHE_NSLOTS_SMALL_MIN;
  } else if ((bin_infos[i].nregs << 1) <=
      TCACHE_NSLOTS_SMALL_MAX) {
   tcache_bin_info[i].ncached_max =
       (bin_infos[i].nregs << 1);
  } else {
   tcache_bin_info[i].ncached_max =
       TCACHE_NSLOTS_SMALL_MAX;
  }
  stack_nelms += tcache_bin_info[i].ncached_max;
 }
 for (; i < nhbins; i++) {
  tcache_bin_info[i].ncached_max = TCACHE_NSLOTS_LARGE;
  stack_nelms += tcache_bin_info[i].ncached_max;
 }

 return 0;
}
