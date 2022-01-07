
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_6__ {scalar_t__ search_handle; int * dirname; } ;
typedef TYPE_1__ isc_dir_t ;


 scalar_t__ INVALID_HANDLE_VALUE ;
 int REQUIRE (int) ;
 scalar_t__ VALID_DIR (TYPE_1__*) ;
 int isc_dir_close (TYPE_1__*) ;
 int start_directory (TYPE_1__*) ;

isc_result_t
isc_dir_reset(isc_dir_t *dir) {
 isc_result_t result;

 REQUIRE(VALID_DIR(dir) && dir->search_handle != INVALID_HANDLE_VALUE);
 REQUIRE(dir->dirname != ((void*)0));







 isc_dir_close(dir);

 result = start_directory(dir);

 return (result);
}
