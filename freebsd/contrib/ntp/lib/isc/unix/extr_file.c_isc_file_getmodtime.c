
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mtime; } ;
typedef int isc_time_t ;
typedef scalar_t__ isc_result_t ;


 scalar_t__ ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 scalar_t__ file_stats (char const*,struct stat*) ;
 int isc_time_set (int *,int ,int ) ;

isc_result_t
isc_file_getmodtime(const char *file, isc_time_t *itime) {
 isc_result_t result;
 struct stat stats;

 REQUIRE(file != ((void*)0));
 REQUIRE(itime != ((void*)0));

 result = file_stats(file, &stats);

 if (result == ISC_R_SUCCESS)




  isc_time_set(itime, stats.st_mtime, 0);

 return (result);
}
