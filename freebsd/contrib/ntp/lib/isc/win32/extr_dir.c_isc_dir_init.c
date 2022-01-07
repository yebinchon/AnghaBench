
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int find_data; scalar_t__ length; } ;
struct TYPE_5__ {char* dirname; int magic; int search_handle; int entry_filled; TYPE_1__ entry; } ;
typedef TYPE_2__ isc_dir_t ;


 int INVALID_HANDLE_VALUE ;
 int ISC_DIR_MAGIC ;
 int ISC_FALSE ;
 int REQUIRE (int ) ;
 int memset (int *,int ,int) ;

void
isc_dir_init(isc_dir_t *dir) {
 REQUIRE(dir != ((void*)0));

 dir->dirname[0] = '\0';

 dir->entry.name[0] = '\0';
 dir->entry.length = 0;
 memset(&(dir->entry.find_data), 0, sizeof(dir->entry.find_data));

 dir->entry_filled = ISC_FALSE;
 dir->search_handle = INVALID_HANDLE_VALUE;

 dir->magic = ISC_DIR_MAGIC;
}
