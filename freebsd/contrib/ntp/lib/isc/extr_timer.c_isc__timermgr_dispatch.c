
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_timermgr_t ;
typedef int isc_time_t ;
typedef int isc__timermgr_t ;


 int TIME_NOW (int *) ;
 int dispatch (int *,int *) ;
 int * timermgr ;

void
isc__timermgr_dispatch(isc_timermgr_t *manager0) {
 isc__timermgr_t *manager = (isc__timermgr_t *)manager0;
 isc_time_t now;





 if (manager == ((void*)0))
  return;
 TIME_NOW(&now);
 dispatch(manager, &now);
}
