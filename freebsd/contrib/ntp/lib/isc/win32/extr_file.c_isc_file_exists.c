
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int isc_boolean_t ;


 scalar_t__ ISC_R_SUCCESS ;
 int ISC_TF (int) ;
 int REQUIRE (int ) ;
 scalar_t__ file_stats (char const*,struct stat*) ;

isc_boolean_t
isc_file_exists(const char *pathname) {
 struct stat stats;

 REQUIRE(pathname != ((void*)0));

 return (ISC_TF(file_stats(pathname, &stats) == ISC_R_SUCCESS));
}
