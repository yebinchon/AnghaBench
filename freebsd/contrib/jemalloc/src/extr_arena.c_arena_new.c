
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_hooks_t ;
typedef int base_t ;
struct TYPE_7__ {int decay_muzzy; int decay_dirty; } ;
struct TYPE_6__ {int create_time; int * base; int * bins; int extent_avail_mtx; int extent_avail; int extent_grow_mtx; int retain_grow_limit; int extent_grow_next; TYPE_3__ stats; int decay_muzzy; int decay_dirty; int extents_retained; int extents_muzzy; int extents_dirty; int large_mtx; int large; int nactive; int dss_prec; int extent_sn_next; int offset_state; int prof_accum; int tcache_ql_mtx; int cache_bin_array_descriptor_ql; int tcache_ql; int * last_thd; int * nthreads; } ;
typedef TYPE_1__ arena_t ;


 int ATOMIC_RELAXED ;
 int CACHELINE ;
 int EXTENT_GROW_MAX_PIND ;
 int HUGEPAGE ;
 unsigned int NBINS ;
 int WITNESS_RANK_ARENA_LARGE ;
 int WITNESS_RANK_EXTENT_AVAIL ;
 int WITNESS_RANK_EXTENT_GROW ;
 int WITNESS_RANK_TCACHE_QL ;
 scalar_t__ arena_decay_init (int *,int ,int *) ;
 int arena_dirty_decay_ms_default_get () ;
 int arena_muzzy_decay_ms_default_get () ;
 int arena_set (unsigned int,TYPE_1__*) ;
 scalar_t__ arena_stats_init (int *,TYPE_3__*) ;
 int assert (int) ;
 int atomic_store_u (int *,unsigned int,int ) ;
 int atomic_store_zu (int *,unsigned int,int ) ;
 int * b0get () ;
 scalar_t__ base_alloc (int *,int *,int,int ) ;
 int base_delete (int *,int *) ;
 int * base_new (int *,unsigned int,int *) ;
 int bin_init (int *) ;
 scalar_t__ config_cache_oblivious ;
 scalar_t__ config_debug ;
 scalar_t__ config_prof ;
 scalar_t__ config_stats ;
 int extent_avail_new (int *) ;
 scalar_t__ extent_dss_prec_get () ;
 int extent_list_init (int *) ;
 int extent_state_dirty ;
 int extent_state_muzzy ;
 int extent_state_retained ;
 scalar_t__ extents_init (int *,int *,int ,int) ;
 int hooks_arena_new_hook () ;
 scalar_t__ malloc_mutex_init (int *,char*,int ,int ) ;
 int malloc_mutex_rank_exclusive ;
 int nstime_init (int *,int ) ;
 int nstime_update (int *) ;
 int post_reentrancy (int ) ;
 int pre_reentrancy (int ,TYPE_1__*) ;
 scalar_t__ prof_accum_init (int *,int *) ;
 int ql_new (int *) ;
 int sz_psz2ind (int ) ;
 int tsdn_null (int *) ;
 int tsdn_tsd (int *) ;

arena_t *
arena_new(tsdn_t *tsdn, unsigned ind, extent_hooks_t *extent_hooks) {
 arena_t *arena;
 base_t *base;
 unsigned i;

 if (ind == 0) {
  base = b0get();
 } else {
  base = base_new(tsdn, ind, extent_hooks);
  if (base == ((void*)0)) {
   return ((void*)0);
  }
 }

 arena = (arena_t *)base_alloc(tsdn, base, sizeof(arena_t), CACHELINE);
 if (arena == ((void*)0)) {
  goto label_error;
 }

 atomic_store_u(&arena->nthreads[0], 0, ATOMIC_RELAXED);
 atomic_store_u(&arena->nthreads[1], 0, ATOMIC_RELAXED);
 arena->last_thd = ((void*)0);

 if (config_stats) {
  if (arena_stats_init(tsdn, &arena->stats)) {
   goto label_error;
  }

  ql_new(&arena->tcache_ql);
  ql_new(&arena->cache_bin_array_descriptor_ql);
  if (malloc_mutex_init(&arena->tcache_ql_mtx, "tcache_ql",
      WITNESS_RANK_TCACHE_QL, malloc_mutex_rank_exclusive)) {
   goto label_error;
  }
 }

 if (config_prof) {
  if (prof_accum_init(tsdn, &arena->prof_accum)) {
   goto label_error;
  }
 }

 if (config_cache_oblivious) {







  atomic_store_zu(&arena->offset_state, config_debug ? ind :
      (size_t)(uintptr_t)arena, ATOMIC_RELAXED);
 }

 atomic_store_zu(&arena->extent_sn_next, 0, ATOMIC_RELAXED);

 atomic_store_u(&arena->dss_prec, (unsigned)extent_dss_prec_get(),
     ATOMIC_RELAXED);

 atomic_store_zu(&arena->nactive, 0, ATOMIC_RELAXED);

 extent_list_init(&arena->large);
 if (malloc_mutex_init(&arena->large_mtx, "arena_large",
     WITNESS_RANK_ARENA_LARGE, malloc_mutex_rank_exclusive)) {
  goto label_error;
 }







 if (extents_init(tsdn, &arena->extents_dirty, extent_state_dirty,
     1)) {
  goto label_error;
 }




 if (extents_init(tsdn, &arena->extents_muzzy, extent_state_muzzy,
     0)) {
  goto label_error;
 }






 if (extents_init(tsdn, &arena->extents_retained, extent_state_retained,
     0)) {
  goto label_error;
 }

 if (arena_decay_init(&arena->decay_dirty,
     arena_dirty_decay_ms_default_get(), &arena->stats.decay_dirty)) {
  goto label_error;
 }
 if (arena_decay_init(&arena->decay_muzzy,
     arena_muzzy_decay_ms_default_get(), &arena->stats.decay_muzzy)) {
  goto label_error;
 }

 arena->extent_grow_next = sz_psz2ind(HUGEPAGE);
 arena->retain_grow_limit = EXTENT_GROW_MAX_PIND;
 if (malloc_mutex_init(&arena->extent_grow_mtx, "extent_grow",
     WITNESS_RANK_EXTENT_GROW, malloc_mutex_rank_exclusive)) {
  goto label_error;
 }

 extent_avail_new(&arena->extent_avail);
 if (malloc_mutex_init(&arena->extent_avail_mtx, "extent_avail",
     WITNESS_RANK_EXTENT_AVAIL, malloc_mutex_rank_exclusive)) {
  goto label_error;
 }


 for (i = 0; i < NBINS; i++) {
  bool err = bin_init(&arena->bins[i]);
  if (err) {
   goto label_error;
  }
 }

 arena->base = base;

 arena_set(ind, arena);

 nstime_init(&arena->create_time, 0);
 nstime_update(&arena->create_time);


 if (ind != 0) {




  assert(!tsdn_null(tsdn));
  pre_reentrancy(tsdn_tsd(tsdn), arena);
  if (hooks_arena_new_hook) {
   hooks_arena_new_hook();
  }
  post_reentrancy(tsdn_tsd(tsdn));
 }

 return arena;
label_error:
 if (ind != 0) {
  base_delete(tsdn, base);
 }
 return ((void*)0);
}
