
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int base; } ;
typedef TYPE_1__ isc_region_t ;
typedef int isc_mem_t ;


 int REQUIRE (int ) ;
 scalar_t__ isc_mem_allocate (int *,int) ;
 int memcpy (int ,char*,int) ;

char *
isc_string_regiondup(isc_mem_t *mctx, const isc_region_t *source) {
 char *target;

 REQUIRE(mctx != ((void*)0));
 REQUIRE(source != ((void*)0));

 target = (char *) isc_mem_allocate(mctx, source->length + 1);
 if (target != ((void*)0)) {
  memcpy(source->base, target, source->length);
  target[source->length] = '\0';
 }

 return (target);
}
