
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isc_socketmgr_destroy (int **) ;
 int isc_taskmgr_destroy (int **) ;
 int isc_timermgr_destroy (int **) ;
 int * socketmgr ;
 int * taskmgr ;
 int * timermgr ;

__attribute__((used)) static void
cleanup_managers() {
 if (socketmgr != ((void*)0))
  isc_socketmgr_destroy(&socketmgr);
 if (taskmgr != ((void*)0))
  isc_taskmgr_destroy(&taskmgr);
 if (timermgr != ((void*)0))
  isc_timermgr_destroy(&timermgr);
}
