
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_statscounter_t ;
typedef int isc_stats_t ;


 int REQUIRE (int) ;
 int isc_stats_increment (int *,int) ;

__attribute__((used)) static inline void
inc_stats(isc_stats_t *stats, isc_statscounter_t counterid) {
 REQUIRE(counterid != -1);

 if (stats != ((void*)0))
  isc_stats_increment(stats, counterid);
}
