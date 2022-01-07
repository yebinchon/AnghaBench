
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;


 int ISC_R_NOTIMPLEMENTED ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 scalar_t__ chdir (char*) ;
 scalar_t__ chroot (char const*) ;
 int errno ;
 int isc__errno2result (int ) ;

isc_result_t
isc_dir_chroot(const char *dirname) {

 REQUIRE(dirname != ((void*)0));







 return (ISC_R_NOTIMPLEMENTED);

}
