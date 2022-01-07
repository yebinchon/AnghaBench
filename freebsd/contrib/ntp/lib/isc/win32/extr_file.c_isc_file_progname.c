
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;


 int ISC_R_NOSPACE ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 char* isc_file_basename (char const*) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;

isc_result_t
isc_file_progname(const char *filename, char *progname, size_t namelen) {
 const char *s;
 char *p;
 size_t len;

 REQUIRE(filename != ((void*)0));
 REQUIRE(progname != ((void*)0));




 s = isc_file_basename(filename);
 if (s == ((void*)0)) {
  return (ISC_R_NOSPACE);
 }




 p = strchr(s, '.');
 if (p == ((void*)0)) {
  if (namelen <= strlen(s))
   return (ISC_R_NOSPACE);

  strcpy(progname, s);
  return (ISC_R_SUCCESS);
 }




 len = p - s;
 if (len >= namelen)
  return (ISC_R_NOSPACE);

 strncpy(progname, s, len);
 progname[len] = '\0';
 return (ISC_R_SUCCESS);
}
