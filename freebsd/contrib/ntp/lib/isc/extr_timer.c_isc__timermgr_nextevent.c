
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_timermgr_t ;
typedef int isc_time_t ;
typedef int isc_result_t ;
struct TYPE_3__ {scalar_t__ nscheduled; int due; } ;
typedef TYPE_1__ isc__timermgr_t ;


 int ISC_R_NOTFOUND ;
 int ISC_R_SUCCESS ;
 TYPE_1__* timermgr ;

isc_result_t
isc__timermgr_nextevent(isc_timermgr_t *manager0, isc_time_t *when) {
 isc__timermgr_t *manager = (isc__timermgr_t *)manager0;





 if (manager == ((void*)0) || manager->nscheduled == 0)
  return (ISC_R_NOTFOUND);
 *when = manager->due;
 return (ISC_R_SUCCESS);
}
