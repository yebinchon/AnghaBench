
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_task_t ;
struct TYPE_8__ {int (* attach ) (TYPE_2__*,TYPE_2__**) ;} ;


 int ENSURE (int) ;
 int ISCAPI_TASK_VALID (TYPE_2__*) ;
 int REQUIRE (int) ;
 int stub1 (TYPE_2__*,TYPE_2__**) ;

void
isc_task_attach(isc_task_t *source, isc_task_t **targetp) {
 REQUIRE(ISCAPI_TASK_VALID(source));
 REQUIRE(targetp != ((void*)0) && *targetp == ((void*)0));

 source->methods->attach(source, targetp);

 ENSURE(*targetp == source);
}
