
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int isc_result_t ;


 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int errno ;
 int isc__errno2result (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static isc_result_t
file_stats(const char *file, struct stat *stats) {
 isc_result_t result = ISC_R_SUCCESS;

 REQUIRE(file != ((void*)0));
 REQUIRE(stats != ((void*)0));

 if (stat(file, stats) != 0)
  result = isc__errno2result(errno);

 return (result);
}
