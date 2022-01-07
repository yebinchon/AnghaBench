
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int isc_statscounter_t ;
struct TYPE_5__ {int ncounters; scalar_t__* copiedcounters; } ;
typedef TYPE_1__ isc_stats_t ;
typedef int (* isc_stats_dumper_t ) (int ,scalar_t__,void*) ;


 unsigned int ISC_STATSDUMP_VERBOSE ;
 int ISC_STATS_VALID (TYPE_1__*) ;
 int REQUIRE (int ) ;
 int copy_counters (TYPE_1__*) ;

void
isc_stats_dump(isc_stats_t *stats, isc_stats_dumper_t dump_fn,
        void *arg, unsigned int options)
{
 int i;

 REQUIRE(ISC_STATS_VALID(stats));

 copy_counters(stats);

 for (i = 0; i < stats->ncounters; i++) {
  if ((options & ISC_STATSDUMP_VERBOSE) == 0 &&
      stats->copiedcounters[i] == 0)
    continue;
  dump_fn((isc_statscounter_t)i, stats->copiedcounters[i], arg);
 }
}
