
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_4__ {int * handle; } ;
typedef TYPE_1__ isc_dir_t ;


 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 scalar_t__ VALID_DIR (TYPE_1__*) ;
 int rewinddir (int *) ;

isc_result_t
isc_dir_reset(isc_dir_t *dir) {
 REQUIRE(VALID_DIR(dir) && dir->handle != ((void*)0));

 rewinddir(dir->handle);

 return (ISC_R_SUCCESS);
}
