
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; int references; } ;
typedef TYPE_1__ isc_stats_t ;


 int ISC_STATS_VALID (TYPE_1__*) ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 int UNLOCK (int *) ;

void
isc_stats_attach(isc_stats_t *stats, isc_stats_t **statsp) {
 REQUIRE(ISC_STATS_VALID(stats));
 REQUIRE(statsp != ((void*)0) && *statsp == ((void*)0));

 LOCK(&stats->lock);
 stats->references++;
 UNLOCK(&stats->lock);

 *statsp = stats;
}
