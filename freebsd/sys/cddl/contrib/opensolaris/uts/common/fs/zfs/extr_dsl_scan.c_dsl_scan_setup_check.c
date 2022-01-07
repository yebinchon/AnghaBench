
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dsl_scan_t ;
typedef int dmu_tx_t ;
struct TYPE_2__ {int * dp_scan; } ;


 int EBUSY ;
 int SET_ERROR (int ) ;
 TYPE_1__* dmu_tx_pool (int *) ;
 scalar_t__ dsl_scan_is_running (int *) ;

__attribute__((used)) static int
dsl_scan_setup_check(void *arg, dmu_tx_t *tx)
{
 dsl_scan_t *scn = dmu_tx_pool(tx)->dp_scan;

 if (dsl_scan_is_running(scn))
  return (SET_ERROR(EBUSY));

 return (0);
}
