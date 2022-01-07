
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef size_t DWORD ;


 size_t GetFullPathName (char const*,size_t,char*,char**) ;
 int ISC_R_NOSPACE ;
 int ISC_R_NOTFOUND ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;

isc_result_t
isc_file_absolutepath(const char *filename, char *path, size_t pathlen) {
 char *ptrname;
 DWORD retval;

 REQUIRE(filename != ((void*)0));
 REQUIRE(path != ((void*)0));

 retval = GetFullPathName(filename, pathlen, path, &ptrname);


 if (retval == 0)
  return (ISC_R_NOTFOUND);

 if (retval >= pathlen)
  return (ISC_R_NOSPACE);
 return (ISC_R_SUCCESS);
}
