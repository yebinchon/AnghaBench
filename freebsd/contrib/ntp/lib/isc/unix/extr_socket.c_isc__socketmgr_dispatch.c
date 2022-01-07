
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int writeset; int readset; int maxfd; int nevents; } ;
typedef TYPE_1__ isc_socketwait_t ;
typedef int isc_socketmgr_t ;
typedef int isc_result_t ;
struct TYPE_8__ {int events; } ;
typedef TYPE_2__ isc__socketmgr_t ;


 int ISC_R_NOTFOUND ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int process_fds (TYPE_2__*,int ,int ,...) ;
 TYPE_2__* socketmgr ;
 TYPE_1__ swait_private ;

isc_result_t
isc__socketmgr_dispatch(isc_socketmgr_t *manager0, isc_socketwait_t *swait) {
 isc__socketmgr_t *manager = (isc__socketmgr_t *)manager0;

 REQUIRE(swait == &swait_private);





 if (manager == ((void*)0))
  return (ISC_R_NOTFOUND);
}
