
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; } ;
typedef TYPE_1__ isc_entropyfilesource_t ;


 int close (int ) ;

__attribute__((used)) static void
destroyfilesource(isc_entropyfilesource_t *source) {
 (void)close(source->handle);
}
