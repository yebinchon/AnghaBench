
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;


 int CHECK (int ) ;
 int ISC_R_SUCCESS ;
 int cleanup_managers () ;
 int isc_os_ncpus () ;
 int isc_socketmgr_create (int ,int *) ;
 int isc_taskmgr_create (int ,int,int ,int *) ;
 int isc_timermgr_create (int ,int *) ;
 int mctx ;
 int ncpus ;
 int socketmgr ;
 int taskmgr ;
 int timermgr ;

__attribute__((used)) static isc_result_t
create_managers() {
 isc_result_t result;



 ncpus = 1;


 CHECK(isc_taskmgr_create(mctx, ncpus, 0, &taskmgr));
 CHECK(isc_timermgr_create(mctx, &timermgr));
 CHECK(isc_socketmgr_create(mctx, &socketmgr));
 return (ISC_R_SUCCESS);

  cleanup:
 cleanup_managers();
 return (result);
}
