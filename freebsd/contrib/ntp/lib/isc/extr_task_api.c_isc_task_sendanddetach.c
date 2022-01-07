
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_task_t ;
typedef int isc_event_t ;
struct TYPE_6__ {int (* sendanddetach ) (TYPE_2__**,int **) ;} ;


 int ENSURE (int) ;
 scalar_t__ ISCAPI_TASK_VALID (TYPE_2__*) ;
 int REQUIRE (int) ;
 int stub1 (TYPE_2__**,int **) ;

void
isc_task_sendanddetach(isc_task_t **taskp, isc_event_t **eventp) {
 REQUIRE(taskp != ((void*)0) && ISCAPI_TASK_VALID(*taskp));
 REQUIRE(eventp != ((void*)0) && *eventp != ((void*)0));

 (*taskp)->methods->sendanddetach(taskp, eventp);

 ENSURE(*taskp == ((void*)0) && *eventp == ((void*)0));
}
