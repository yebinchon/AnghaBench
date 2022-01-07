
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_8__ {int cFileName; } ;
struct TYPE_6__ {int length; int name; TYPE_5__ find_data; } ;
struct TYPE_7__ {scalar_t__ search_handle; int entry_filled; TYPE_1__ entry; int dirname; } ;
typedef TYPE_2__ isc_dir_t ;


 scalar_t__ FindFirstFile (int ,TYPE_5__*) ;
 int INSIST (int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int ISC_FALSE ;
 int ISC_R_FAILURE ;
 int ISC_R_SUCCESS ;
 int ISC_TRUE ;
 int REQUIRE (int) ;
 int VALID_DIR (TYPE_2__*) ;
 int strcpy (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static isc_result_t
start_directory(isc_dir_t *dir)
{
 REQUIRE(VALID_DIR(dir));
 REQUIRE(dir->search_handle == INVALID_HANDLE_VALUE);

 dir->entry_filled = ISC_FALSE;




 dir->search_handle = FindFirstFile(dir->dirname,
         &dir->entry.find_data);

 if (dir->search_handle == INVALID_HANDLE_VALUE) {
  return (ISC_R_FAILURE);
 }




 INSIST(sizeof(dir->entry.name) >
        strlen(dir->entry.find_data.cFileName));




 strcpy(dir->entry.name, dir->entry.find_data.cFileName);
 dir->entry.length = strlen(dir->entry.name);

 dir->entry_filled = ISC_TRUE;

 return (ISC_R_SUCCESS);
}
