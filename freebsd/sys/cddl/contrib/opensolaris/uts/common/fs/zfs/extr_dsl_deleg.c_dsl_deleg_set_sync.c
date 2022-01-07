
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
struct TYPE_11__ {int * dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_12__ {int dd_dbuf; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_13__ {int * dda_nvlist; int dda_name; } ;
typedef TYPE_3__ dsl_deleg_arg_t ;
typedef int dmu_tx_t ;
struct TYPE_14__ {scalar_t__ dd_deleg_zapobj; } ;


 int DMU_OT_DSL_PERMS ;
 int DMU_OT_NONE ;
 int FTAG ;
 int VERIFY (int) ;
 int VERIFY0 (int ) ;
 int dmu_buf_will_dirty (int ,int *) ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int dsl_dir_hold (TYPE_1__*,int ,int ,TYPE_2__**,int *) ;
 TYPE_6__* dsl_dir_phys (TYPE_2__*) ;
 int dsl_dir_rele (TYPE_2__*,int ) ;
 int * fnvpair_value_nvlist (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int spa_history_log_internal_dd (TYPE_2__*,char*,int *,char*,char const*,char const*) ;
 scalar_t__ zap_create (int *,int ,int ,int ,int *) ;
 scalar_t__ zap_create_link (int *,int ,scalar_t__,char const*,int *) ;
 scalar_t__ zap_lookup (int *,scalar_t__,char const*,int,int,scalar_t__*) ;
 scalar_t__ zap_update (int *,scalar_t__,char const*,int,int,scalar_t__*,int *) ;

__attribute__((used)) static void
dsl_deleg_set_sync(void *arg, dmu_tx_t *tx)
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
  dmu_buf_will_dirty(dd->dd_dbuf, tx);
  zapobj = dsl_dir_phys(dd)->dd_deleg_zapobj = zap_create(mos,
      DMU_OT_DSL_PERMS, DMU_OT_NONE, 0, tx);
 }

 while (whopair = nvlist_next_nvpair(dda->dda_nvlist, whopair)) {
  const char *whokey = nvpair_name(whopair);
  nvlist_t *perms;
  nvpair_t *permpair = ((void*)0);
  uint64_t jumpobj;

  perms = fnvpair_value_nvlist(whopair);

  if (zap_lookup(mos, zapobj, whokey, 8, 1, &jumpobj) != 0) {
   jumpobj = zap_create_link(mos, DMU_OT_DSL_PERMS,
       zapobj, whokey, tx);
  }

  while (permpair = nvlist_next_nvpair(perms, permpair)) {
   const char *perm = nvpair_name(permpair);
   uint64_t n = 0;

   VERIFY(zap_update(mos, jumpobj,
       perm, 8, 1, &n, tx) == 0);
   spa_history_log_internal_dd(dd, "permission update", tx,
       "%s %s", whokey, perm);
  }
 }
 dsl_dir_rele(dd, FTAG);
}
