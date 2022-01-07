
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dsl_dir_t ;
struct TYPE_4__ {int dda_name; } ;
typedef TYPE_1__ dsl_deleg_arg_t ;
typedef int dmu_tx_t ;
struct TYPE_5__ {int dp_spa; } ;


 int ENOTSUP ;
 int FTAG ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_VERSION_DELEGATED_PERMS ;
 TYPE_2__* dmu_tx_pool (int *) ;
 int dsl_dir_hold (TYPE_2__*,int ,int ,int **,int *) ;
 int dsl_dir_rele (int *,int ) ;
 scalar_t__ spa_version (int ) ;

__attribute__((used)) static int
dsl_deleg_check(void *arg, dmu_tx_t *tx)
{
 dsl_deleg_arg_t *dda = arg;
 dsl_dir_t *dd;
 int error;

 if (spa_version(dmu_tx_pool(tx)->dp_spa) <
     SPA_VERSION_DELEGATED_PERMS) {
  return (SET_ERROR(ENOTSUP));
 }

 error = dsl_dir_hold(dmu_tx_pool(tx), dda->dda_name, FTAG, &dd, ((void*)0));
 if (error == 0)
  dsl_dir_rele(dd, FTAG);
 return (error);
}
