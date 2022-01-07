
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_boolean_t ;


 int ISC_FALSE ;
 int ISC_TRUE ;
 int REQUIRE (int ) ;
 scalar_t__ isc_file_isabsolute (char const*) ;
 scalar_t__ isc_file_iscurrentdir (char const*) ;

isc_boolean_t
isc_file_ischdiridempotent(const char *filename) {
 REQUIRE(filename != ((void*)0));
 if (isc_file_isabsolute(filename))
  return (ISC_TRUE);
 if (isc_file_iscurrentdir(filename))
  return (ISC_TRUE);
 return (ISC_FALSE);
}
