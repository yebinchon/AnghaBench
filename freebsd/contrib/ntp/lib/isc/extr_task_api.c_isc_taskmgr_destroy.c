
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_taskmgr_t ;
struct TYPE_6__ {int (* destroy ) (TYPE_2__**) ;} ;


 int ENSURE (int ) ;
 scalar_t__ ISCAPI_TASKMGR_VALID (TYPE_2__*) ;
 int REQUIRE (int) ;
 int stub1 (TYPE_2__**) ;

void
isc_taskmgr_destroy(isc_taskmgr_t **managerp) {
 REQUIRE(managerp != ((void*)0) && ISCAPI_TASKMGR_VALID(*managerp));

 (*managerp)->methods->destroy(managerp);

 ENSURE(*managerp == ((void*)0));
}
