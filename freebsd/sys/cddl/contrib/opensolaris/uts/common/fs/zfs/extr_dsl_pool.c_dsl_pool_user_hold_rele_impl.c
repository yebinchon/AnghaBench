
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int objset_t ;
struct TYPE_4__ {scalar_t__ dp_tmp_userrefs_obj; int dp_spa; int * dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dmu_tx_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int) ;
 int ENOENT ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_VERSION_USERREFS ;
 int dmu_tx_is_syncing (int *) ;
 int dsl_pool_user_hold_create_obj (TYPE_1__*,int *) ;
 char* kmem_asprintf (char*,int ,char const*) ;
 scalar_t__ spa_version (int ) ;
 int strfree (char*) ;
 int zap_add (int *,scalar_t__,char*,int,int,scalar_t__*,int *) ;
 int zap_remove (int *,scalar_t__,char*,int *) ;

__attribute__((used)) static int
dsl_pool_user_hold_rele_impl(dsl_pool_t *dp, uint64_t dsobj,
    const char *tag, uint64_t now, dmu_tx_t *tx, boolean_t holding)
{
 objset_t *mos = dp->dp_meta_objset;
 uint64_t zapobj = dp->dp_tmp_userrefs_obj;
 char *name;
 int error;

 ASSERT(spa_version(dp->dp_spa) >= SPA_VERSION_USERREFS);
 ASSERT(dmu_tx_is_syncing(tx));





 if (zapobj == 0) {
  if (holding) {
   dsl_pool_user_hold_create_obj(dp, tx);
   zapobj = dp->dp_tmp_userrefs_obj;
  } else {
   return (SET_ERROR(ENOENT));
  }
 }

 name = kmem_asprintf("%llx-%s", (u_longlong_t)dsobj, tag);
 if (holding)
  error = zap_add(mos, zapobj, name, 8, 1, &now, tx);
 else
  error = zap_remove(mos, zapobj, name, tx);
 strfree(name);

 return (error);
}
