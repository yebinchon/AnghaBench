
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ references; int ncounters; int mctx; int counterlock; int lock; int counters; int copiedcounters; } ;
typedef TYPE_1__ isc_stats_t ;
typedef int isc_stat_t ;


 int DESTROYLOCK (int *) ;
 scalar_t__ ISC_STATS_VALID (TYPE_1__*) ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 int UNLOCK (int *) ;
 int isc_mem_put (int ,int ,int) ;
 int isc_mem_putanddetach (int *,TYPE_1__*,int) ;
 int isc_rwlock_destroy (int *) ;

void
isc_stats_detach(isc_stats_t **statsp) {
 isc_stats_t *stats;

 REQUIRE(statsp != ((void*)0) && ISC_STATS_VALID(*statsp));

 stats = *statsp;
 *statsp = ((void*)0);

 LOCK(&stats->lock);
 stats->references--;
 UNLOCK(&stats->lock);

 if (stats->references == 0) {
  isc_mem_put(stats->mctx, stats->copiedcounters,
       sizeof(isc_stat_t) * stats->ncounters);
  isc_mem_put(stats->mctx, stats->counters,
       sizeof(isc_stat_t) * stats->ncounters);
  DESTROYLOCK(&stats->lock);



  isc_mem_putanddetach(&stats->mctx, stats, sizeof(*stats));
 }
}
