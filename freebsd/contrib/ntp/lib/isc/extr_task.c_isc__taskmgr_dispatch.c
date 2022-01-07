
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_taskmgr_t ;
typedef int isc_result_t ;
typedef int isc__taskmgr_t ;


 int ISC_R_NOTFOUND ;
 int ISC_R_SUCCESS ;
 int dispatch (int *) ;
 int * taskmgr ;

isc_result_t
isc__taskmgr_dispatch(isc_taskmgr_t *manager0) {
 isc__taskmgr_t *manager = (void*)manager0;





 if (manager == ((void*)0))
  return (ISC_R_NOTFOUND);

 dispatch(manager);

 return (ISC_R_SUCCESS);
}
