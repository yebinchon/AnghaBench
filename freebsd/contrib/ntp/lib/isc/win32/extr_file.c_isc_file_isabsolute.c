
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_boolean_t ;


 int ISC_FALSE ;
 int ISC_TRUE ;
 int REQUIRE (int ) ;
 scalar_t__ isalpha (char const) ;

isc_boolean_t
isc_file_isabsolute(const char *filename) {
 REQUIRE(filename != ((void*)0));




 if ((filename[0] == '\\') && (filename[1] == '\\'))
  return (ISC_TRUE);
 if (isalpha(filename[0]) && filename[1] == ':' && filename[2] == '\\')
  return (ISC_TRUE);
 if (isalpha(filename[0]) && filename[1] == ':' && filename[2] == '/')
  return (ISC_TRUE);
 return (ISC_FALSE);
}
