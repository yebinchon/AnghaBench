
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_5__ {scalar_t__ search_handle; char* dirname; } ;
typedef TYPE_1__ isc_dir_t ;


 scalar_t__ INVALID_HANDLE_VALUE ;
 int ISC_R_NOSPACE ;
 int REQUIRE (int) ;
 scalar_t__ VALID_DIR (TYPE_1__*) ;
 int start_directory (TYPE_1__*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

isc_result_t
isc_dir_open(isc_dir_t *dir, const char *dirname) {
 char *p;
 isc_result_t result;

 REQUIRE(dirname != ((void*)0));
 REQUIRE(VALID_DIR(dir) && dir->search_handle == INVALID_HANDLE_VALUE);





 if (strlen(dirname) + 3 > sizeof(dir->dirname))

  return (ISC_R_NOSPACE);
 strcpy(dir->dirname, dirname);




 p = dir->dirname + strlen(dir->dirname);
 if (dir->dirname < p && *(p - 1) != '\\' && *(p - 1) != ':')
  *p++ = '\\';
 *p++ = '*';
 *p = '\0';




 result = start_directory(dir);

 return (result);
}
