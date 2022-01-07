
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
struct TYPE_6__ {int * dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dsl_dir_t ;
struct TYPE_7__ {int * dda_nvlist; int dda_name; } ;
typedef TYPE_2__ dsl_deleg_arg_t ;
typedef int dmu_tx_t ;
struct TYPE_8__ {scalar_t__ dd_deleg_zapobj; } ;


 int FTAG ;
 int VERIFY (int) ;
 int VERIFY0 (int ) ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int dsl_dir_hold (TYPE_1__*,int ,int ,int **,int *) ;
 TYPE_3__* dsl_dir_phys (int *) ;
 int dsl_dir_rele (int *,int ) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 int spa_history_log_internal_dd (int *,char*,int *,char*,char const*,...) ;
 scalar_t__ zap_count (int *,scalar_t__,scalar_t__*) ;
 scalar_t__ zap_destroy (int *,scalar_t__,int *) ;
 scalar_t__ zap_lookup (int *,scalar_t__,char const*,int,int,scalar_t__*) ;
 int zap_remove (int *,scalar_t__,char const*,int *) ;

__attribute__((used)) static void
dsl_deleg_unset_sync(void *arg, dmu_tx_t *tx)
{
 dsl_deleg_arg_t *dda = arg;
 dsl_dir_t *dd;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 objset_t *mos = dp->dp_meta_objset;
 nvpair_t *whopair = ((void*)0);
 uint64_t zapobj;

 VERIFY0(dsl_dir_hold(dp, dda->dda_name, FTAG, &dd, ((void*)0)));
 zapobj = dsl_dir_phys(dd)->dd_deleg_zapobj;
 if (zapobj == 0) {
  dsl_dir_rele(dd, FTAG);
  return;
 }

 while (whopair = nvlist_next_nvpair(dda->dda_nvlist, whopair)) {
  const char *whokey = nvpair_name(whopair);
  nvlist_t *perms;
  nvpair_t *permpair = ((void*)0);
  uint64_t jumpobj;

  if (nvpair_value_nvlist(whopair, &perms) != 0) {
   if (zap_lookup(mos, zapobj, whokey, 8,
       1, &jumpobj) == 0) {
    (void) zap_remove(mos, zapobj, whokey, tx);
    VERIFY(0 == zap_destroy(mos, jumpobj, tx));
   }
   spa_history_log_internal_dd(dd, "permission who remove",
       tx, "%s", whokey);
   continue;
  }

  if (zap_lookup(mos, zapobj, whokey, 8, 1, &jumpobj) != 0)
   continue;

  while (permpair = nvlist_next_nvpair(perms, permpair)) {
   const char *perm = nvpair_name(permpair);
   uint64_t n = 0;

   (void) zap_remove(mos, jumpobj, perm, tx);
   if (zap_count(mos, jumpobj, &n) == 0 && n == 0) {
    (void) zap_remove(mos, zapobj,
        whokey, tx);
    VERIFY(0 == zap_destroy(mos,
        jumpobj, tx));
   }
   spa_history_log_internal_dd(dd, "permission remove", tx,
       "%s %s", whokey, perm);
  }
 }
 dsl_dir_rele(dd, FTAG);
}
