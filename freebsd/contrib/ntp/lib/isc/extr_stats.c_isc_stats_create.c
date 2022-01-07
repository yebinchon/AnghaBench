
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_stats_t ;
typedef int isc_result_t ;
typedef int isc_mem_t ;


 int REQUIRE (int) ;
 int create_stats (int *,int,int **) ;

isc_result_t
isc_stats_create(isc_mem_t *mctx, isc_stats_t **statsp, int ncounters) {
 REQUIRE(statsp != ((void*)0) && *statsp == ((void*)0));

 return (create_stats(mctx, ncounters, statsp));
}
