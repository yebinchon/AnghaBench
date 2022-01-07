
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zri_canceled; } ;
typedef TYPE_1__ zcp_run_info_t ;
typedef int dmu_tx_t ;


 int B_TRUE ;

__attribute__((used)) static void
zcp_eval_sig(void *arg, dmu_tx_t *tx)
{
 zcp_run_info_t *ri = arg;

 ri->zri_canceled = B_TRUE;
}
