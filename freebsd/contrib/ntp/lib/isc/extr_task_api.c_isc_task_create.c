
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_taskmgr_t ;
typedef int isc_task_t ;
typedef int isc_result_t ;
struct TYPE_6__ {int (* taskcreate ) (TYPE_2__*,unsigned int,int **) ;} ;


 int ISCAPI_TASKMGR_VALID (TYPE_2__*) ;
 int REQUIRE (int) ;
 int stub1 (TYPE_2__*,unsigned int,int **) ;

isc_result_t
isc_task_create(isc_taskmgr_t *manager, unsigned int quantum,
  isc_task_t **taskp)
{
 REQUIRE(ISCAPI_TASKMGR_VALID(manager));
 REQUIRE(taskp != ((void*)0) && *taskp == ((void*)0));

 return (manager->methods->taskcreate(manager, quantum, taskp));
}
