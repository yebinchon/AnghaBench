
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * handle; } ;
typedef TYPE_1__ isc_dir_t ;


 int REQUIRE (int) ;
 scalar_t__ VALID_DIR (TYPE_1__*) ;
 int closedir (int *) ;

void
isc_dir_close(isc_dir_t *dir) {
       REQUIRE(VALID_DIR(dir) && dir->handle != ((void*)0));

       (void)closedir(dir->handle);
       dir->handle = ((void*)0);
}
