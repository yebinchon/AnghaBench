
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ncounters; } ;
typedef TYPE_1__ isc_stats_t ;


 int ISC_STATS_VALID (TYPE_1__*) ;
 int REQUIRE (int ) ;

int
isc_stats_ncounters(isc_stats_t *stats) {
 REQUIRE(ISC_STATS_VALID(stats));

 return (stats->ncounters);
}
