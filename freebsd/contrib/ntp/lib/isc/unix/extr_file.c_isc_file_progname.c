
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;


 int ISC_R_NOSPACE ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 char* isc_file_basename (char const*) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

isc_result_t
isc_file_progname(const char *filename, char *buf, size_t buflen) {
 const char *base;
 size_t len;

 REQUIRE(filename != ((void*)0));
 REQUIRE(buf != ((void*)0));

 base = isc_file_basename(filename);
 len = strlen(base) + 1;

 if (len > buflen)
  return (ISC_R_NOSPACE);
 memcpy(buf, base, len);

 return (ISC_R_SUCCESS);
}
