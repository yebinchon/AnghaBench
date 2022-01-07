
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_8__ {int cFileName; } ;
struct TYPE_6__ {int name; int length; TYPE_5__ find_data; } ;
struct TYPE_7__ {scalar_t__ search_handle; TYPE_1__ entry; scalar_t__ entry_filled; } ;
typedef TYPE_2__ isc_dir_t ;


 scalar_t__ ERROR_NO_MORE_FILES ;
 scalar_t__ FALSE ;
 scalar_t__ FindNextFile (scalar_t__,TYPE_5__*) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ ISC_FALSE ;
 int ISC_R_NOMORE ;
 int ISC_R_SUCCESS ;
 int ISC_R_UNEXPECTED ;
 int REQUIRE (int) ;
 scalar_t__ VALID_DIR (TYPE_2__*) ;
 int strcpy (int ,int ) ;
 int strlen (int ) ;

isc_result_t
isc_dir_read(isc_dir_t *dir) {
 REQUIRE(VALID_DIR(dir) && dir->search_handle != INVALID_HANDLE_VALUE);

 if (dir->entry_filled)



  dir->entry_filled = ISC_FALSE;

 else {



  if (FindNextFile(dir->search_handle,
     &dir->entry.find_data) == FALSE)





   if (GetLastError() == ERROR_NO_MORE_FILES)
    return (ISC_R_NOMORE);
   else
    return (ISC_R_UNEXPECTED);
 }




 strcpy(dir->entry.name, dir->entry.find_data.cFileName);
 dir->entry.length = strlen(dir->entry.name);

 return (ISC_R_SUCCESS);
}
