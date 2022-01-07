
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ search_handle; } ;
typedef TYPE_1__ isc_dir_t ;


 int FindClose (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int REQUIRE (int) ;
 scalar_t__ VALID_DIR (TYPE_1__*) ;

void
isc_dir_close(isc_dir_t *dir) {
       REQUIRE(VALID_DIR(dir) && dir->search_handle != INVALID_HANDLE_VALUE);

       FindClose(dir->search_handle);
       dir->search_handle = INVALID_HANDLE_VALUE;
}
