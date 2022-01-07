
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;


 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int errno ;
 int isc__errno2result (int ) ;
 int rename (char const*,char const*) ;

isc_result_t
isc_file_rename(const char *oldname, const char *newname) {
 int r;

 REQUIRE(oldname != ((void*)0));
 REQUIRE(newname != ((void*)0));

 r = rename(oldname, newname);
 if (r == 0)
  return (ISC_R_SUCCESS);
 else
  return (isc__errno2result(errno));
}
