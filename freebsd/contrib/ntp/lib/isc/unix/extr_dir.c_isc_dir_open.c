
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_4__ {char* dirname; int * handle; } ;
typedef TYPE_1__ isc_dir_t ;


 int ISC_R_NOSPACE ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int VALID_DIR (TYPE_1__*) ;
 int errno ;
 int isc__errno2result (int ) ;
 int * opendir (char const*) ;
 int strlcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

isc_result_t
isc_dir_open(isc_dir_t *dir, const char *dirname) {
 char *p;
 size_t octets;
 isc_result_t result = ISC_R_SUCCESS;

 REQUIRE(VALID_DIR(dir));
 REQUIRE(dirname != ((void*)0));





 octets = strlen(dirname) + 1;
 if (octets + 2 > sizeof(dir->dirname))

  return (ISC_R_NOSPACE);
 strlcpy(dir->dirname, dirname, octets);




 p = dir->dirname + strlen(dir->dirname);
 if (dir->dirname < p && *(p - 1) != '/')
  *p++ = '/';
 *p++ = '*';
 *p = '\0';




 dir->handle = opendir(dirname);

 if (dir->handle == ((void*)0))
  return isc__errno2result(errno);

 return (result);
}
