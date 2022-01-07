
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_taskmgrmode_t ;
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_taskmgr_t ;
struct TYPE_6__ {int (* mode ) (TYPE_2__*) ;} ;


 int ISCAPI_TASKMGR_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*) ;

isc_taskmgrmode_t
isc_taskmgr_mode(isc_taskmgr_t *manager) {
 REQUIRE(ISCAPI_TASKMGR_VALID(manager));

 return (manager->methods->mode(manager));
}
