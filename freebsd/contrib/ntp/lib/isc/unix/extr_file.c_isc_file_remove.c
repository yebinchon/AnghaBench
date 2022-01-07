
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;


 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int errno ;
 int isc__errno2result (int ) ;
 int unlink (char const*) ;

isc_result_t
isc_file_remove(const char *filename) {
 int r;

 REQUIRE(filename != ((void*)0));

 r = unlink(filename);
 if (r == 0)
  return (ISC_R_SUCCESS);
 else
  return (isc__errno2result(errno));
}
