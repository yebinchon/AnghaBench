
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;


 scalar_t__ ERANGE ;
 int ISC_R_NOSPACE ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 scalar_t__ errno ;
 char* getcwd (char*,size_t) ;
 int isc__errno2result (scalar_t__) ;
 int strlcat (char*,char*,size_t) ;
 int strlen (char*) ;

__attribute__((used)) static isc_result_t
dir_current(char *dirname, size_t length) {
 char *cwd;
 isc_result_t result = ISC_R_SUCCESS;

 REQUIRE(dirname != ((void*)0));
 REQUIRE(length > 0U);

 cwd = getcwd(dirname, length);

 if (cwd == ((void*)0)) {
  if (errno == ERANGE)
   result = ISC_R_NOSPACE;
  else
   result = isc__errno2result(errno);
 } else {
  if (strlen(dirname) + 1 == length)
   result = ISC_R_NOSPACE;
  else if (dirname[1] != '\0')
   strlcat(dirname, "/", length);
 }

 return (result);
}
