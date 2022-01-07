
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int isc_uint64_t ;
struct TYPE_5__ {int references; int ncounters; int lock; struct TYPE_5__* copiedcounters; struct TYPE_5__* counters; int magic; int * mctx; int counterlock; } ;
typedef TYPE_1__ isc_stats_t ;
typedef int isc_stat_t ;
typedef scalar_t__ isc_result_t ;
typedef int isc_mem_t ;


 int DESTROYLOCK (int *) ;
 scalar_t__ ISC_R_NOMEMORY ;
 scalar_t__ ISC_R_SUCCESS ;
 int ISC_STATS_MAGIC ;
 int REQUIRE (int) ;
 int isc_mem_attach (int *,int **) ;
 void* isc_mem_get (int *,int) ;
 int isc_mem_put (int *,TYPE_1__*,int) ;
 scalar_t__ isc_mutex_init (int *) ;
 scalar_t__ isc_rwlock_init (int *,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static isc_result_t
create_stats(isc_mem_t *mctx, int ncounters, isc_stats_t **statsp) {
 isc_stats_t *stats;
 isc_result_t result = ISC_R_SUCCESS;

 REQUIRE(statsp != ((void*)0) && *statsp == ((void*)0));

 stats = isc_mem_get(mctx, sizeof(*stats));
 if (stats == ((void*)0))
  return (ISC_R_NOMEMORY);

 result = isc_mutex_init(&stats->lock);
 if (result != ISC_R_SUCCESS)
  goto clean_stats;

 stats->counters = isc_mem_get(mctx, sizeof(isc_stat_t) * ncounters);
 if (stats->counters == ((void*)0)) {
  result = ISC_R_NOMEMORY;
  goto clean_mutex;
 }
 stats->copiedcounters = isc_mem_get(mctx,
         sizeof(isc_uint64_t) * ncounters);
 if (stats->copiedcounters == ((void*)0)) {
  result = ISC_R_NOMEMORY;
  goto clean_counters;
 }







 stats->references = 1;
 memset(stats->counters, 0, sizeof(isc_stat_t) * ncounters);
 stats->mctx = ((void*)0);
 isc_mem_attach(mctx, &stats->mctx);
 stats->ncounters = ncounters;
 stats->magic = ISC_STATS_MAGIC;

 *statsp = stats;

 return (result);

clean_counters:
 isc_mem_put(mctx, stats->counters, sizeof(isc_stat_t) * ncounters);







clean_mutex:
 DESTROYLOCK(&stats->lock);

clean_stats:
 isc_mem_put(mctx, stats, sizeof(*stats));

 return (result);
}
