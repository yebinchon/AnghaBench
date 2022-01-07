
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ scn_restart_txg; } ;
typedef TYPE_1__ dsl_scan_t ;
struct TYPE_6__ {scalar_t__ tx_txg; } ;
typedef TYPE_2__ dmu_tx_t ;
typedef int boolean_t ;



__attribute__((used)) static boolean_t
dsl_scan_restarting(dsl_scan_t *scn, dmu_tx_t *tx)
{
 return (scn->scn_restart_txg != 0 &&
     scn->scn_restart_txg <= tx->tx_txg);
}
