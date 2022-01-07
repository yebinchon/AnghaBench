
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {scalar_t__ done; } ;
typedef TYPE_1__ completion_t ;


 int ISC_R_FAILURE ;
 int ISC_R_SUCCESS ;
 int isc__taskmgr_dispatch (int ) ;
 scalar_t__ isc__taskmgr_ready (int ) ;
 int isc_test_nap (int) ;
 int taskmgr ;

__attribute__((used)) static isc_result_t
waitfor(completion_t *completion) {
 int i = 0;
 while (!completion->done && i++ < 5000) {

  while (isc__taskmgr_ready(taskmgr))
   isc__taskmgr_dispatch(taskmgr);

  isc_test_nap(1000);
 }
 if (completion->done)
  return (ISC_R_SUCCESS);
 return (ISC_R_FAILURE);
}
