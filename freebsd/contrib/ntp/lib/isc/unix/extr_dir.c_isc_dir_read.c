
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dirent {int d_name; } ;
typedef int isc_result_t ;
struct TYPE_5__ {int length; int name; } ;
struct TYPE_6__ {TYPE_1__ entry; int * handle; } ;
typedef TYPE_2__ isc_dir_t ;


 int ISC_R_NOMORE ;
 int ISC_R_SUCCESS ;
 int ISC_R_UNEXPECTED ;
 int REQUIRE (int) ;
 scalar_t__ VALID_DIR (TYPE_2__*) ;
 struct dirent* readdir (int *) ;
 int strlcpy (int ,int ,size_t) ;
 int strlen (int ) ;

isc_result_t
isc_dir_read(isc_dir_t *dir) {
 struct dirent *entry;
 size_t octets;

 REQUIRE(VALID_DIR(dir) && dir->handle != ((void*)0));




 entry = readdir(dir->handle);

 if (entry == ((void*)0))
  return (ISC_R_NOMORE);




 octets = strlen(entry->d_name) + 1;
 if (sizeof(dir->entry.name) < octets)
  return (ISC_R_UNEXPECTED);

 strlcpy(dir->entry.name, entry->d_name, octets);




 dir->entry.length = strlen(entry->d_name);

 return (ISC_R_SUCCESS);
}
