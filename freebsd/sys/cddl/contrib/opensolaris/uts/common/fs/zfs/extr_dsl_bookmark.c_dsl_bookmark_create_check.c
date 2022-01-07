
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_5__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dsl_dataset_t ;
struct TYPE_6__ {int dbca_errors; int dbca_bmarks; } ;
typedef TYPE_2__ dsl_bookmark_create_arg_t ;
typedef int dmu_tx_t ;


 int ENOTSUP ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_BOOKMARKS ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int dsl_bookmark_create_check_impl (int *,int ,int *) ;
 int dsl_dataset_hold (TYPE_1__*,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int fnvlist_add_int32 (int ,int ,int) ;
 int fnvpair_value_string (int *) ;
 int * nvlist_next_nvpair (int ,int *) ;
 int nvpair_name (int *) ;
 int spa_feature_is_enabled (int ,int ) ;

__attribute__((used)) static int
dsl_bookmark_create_check(void *arg, dmu_tx_t *tx)
{
 dsl_bookmark_create_arg_t *dbca = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 int rv = 0;

 if (!spa_feature_is_enabled(dp->dp_spa, SPA_FEATURE_BOOKMARKS))
  return (SET_ERROR(ENOTSUP));

 for (nvpair_t *pair = nvlist_next_nvpair(dbca->dbca_bmarks, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(dbca->dbca_bmarks, pair)) {
  dsl_dataset_t *snapds;
  int error;


  error = dsl_dataset_hold(dp, fnvpair_value_string(pair),
      FTAG, &snapds);
  if (error == 0) {
   error = dsl_bookmark_create_check_impl(snapds,
       nvpair_name(pair), tx);
   dsl_dataset_rele(snapds, FTAG);
  }
  if (error != 0) {
   fnvlist_add_int32(dbca->dbca_errors,
       nvpair_name(pair), error);
   rv = error;
  }
 }

 return (rv);
}
