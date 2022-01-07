
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ isc_statscounter_t ;
struct TYPE_5__ {scalar_t__ ncounters; } ;
typedef TYPE_1__ isc_stats_t ;


 int ISC_STATS_VALID (TYPE_1__*) ;
 int REQUIRE (int) ;
 int incrementcounter (TYPE_1__*,int) ;

void
isc_stats_increment(isc_stats_t *stats, isc_statscounter_t counter) {
 REQUIRE(ISC_STATS_VALID(stats));
 REQUIRE(counter < stats->ncounters);

 incrementcounter(stats, (int)counter);
}
