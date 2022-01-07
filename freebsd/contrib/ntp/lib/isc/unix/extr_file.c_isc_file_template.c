
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;


 int ISC_R_NOSPACE ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int strlcat (char*,char const*,size_t) ;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

isc_result_t
isc_file_template(const char *path, const char *templet, char *buf,
   size_t buflen) {
 char *s;

 REQUIRE(path != ((void*)0));
 REQUIRE(templet != ((void*)0));
 REQUIRE(buf != ((void*)0));

 s = strrchr(templet, '/');
 if (s != ((void*)0))
  templet = s + 1;

 s = strrchr(path, '/');

 if (s != ((void*)0)) {
  if ((s - path + 1 + strlen(templet) + 1) > buflen)
   return (ISC_R_NOSPACE);

  strlcpy(buf, path, buflen);
  buf[s - path + 1] = '\0';
  strlcat(buf, templet, buflen);
 } else {
  if ((strlen(templet) + 1) > buflen)
   return (ISC_R_NOSPACE);

  strlcpy(buf, templet, buflen);
 }

 return (ISC_R_SUCCESS);
}
