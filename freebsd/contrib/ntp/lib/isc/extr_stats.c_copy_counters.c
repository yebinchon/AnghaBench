
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_uint64_t ;
struct TYPE_4__ {int ncounters; int* copiedcounters; int counterlock; TYPE_2__* counters; } ;
typedef TYPE_1__ isc_stats_t ;
typedef int isc_stat_t ;
struct TYPE_5__ {int lo; scalar_t__ hi; } ;


 int UNUSED (int) ;
 int isc_rwlock_lock (int *,int ) ;
 int isc_rwlock_unlock (int *,int ) ;
 int isc_rwlocktype_write ;
 int memcpy (int*,TYPE_2__*,int) ;

__attribute__((used)) static void
copy_counters(isc_stats_t *stats) {
 int i;
 UNUSED(i);
 memcpy(stats->copiedcounters, stats->counters,
        stats->ncounters * sizeof(isc_stat_t));





}
