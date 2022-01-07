
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_13__ {int za_integer_length; int za_num_integers; scalar_t__ za_first_integer; char* za_name; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int nvlist_t ;
struct TYPE_14__ {int * dp_meta_objset; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_15__ {struct TYPE_15__* dd_parent; TYPE_2__* dd_pool; } ;
typedef TYPE_3__ dsl_dir_t ;
struct TYPE_16__ {scalar_t__ dd_deleg_zapobj; } ;


 int ASSERT (int) ;
 int FTAG ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dsl_dir_hold (TYPE_2__*,char const*,int ,TYPE_3__**,int *) ;
 int dsl_dir_name (TYPE_3__*,char*) ;
 TYPE_8__* dsl_dir_phys (TYPE_3__*) ;
 int dsl_dir_rele (TYPE_3__*,int ) ;
 int dsl_pool_hold (char const*,int ,TYPE_2__**) ;
 int dsl_pool_rele (TYPE_2__*,int ) ;
 int fnvlist_add_boolean (int *,char*) ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ zap_count (int *,scalar_t__,scalar_t__*) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,scalar_t__) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;

int
dsl_deleg_get(const char *ddname, nvlist_t **nvp)
{
 dsl_dir_t *dd, *startdd;
 dsl_pool_t *dp;
 int error;
 objset_t *mos;

 error = dsl_pool_hold(ddname, FTAG, &dp);
 if (error != 0)
  return (error);

 error = dsl_dir_hold(dp, ddname, FTAG, &startdd, ((void*)0));
 if (error != 0) {
  dsl_pool_rele(dp, FTAG);
  return (error);
 }

 dp = startdd->dd_pool;
 mos = dp->dp_meta_objset;

 VERIFY(nvlist_alloc(nvp, NV_UNIQUE_NAME, KM_SLEEP) == 0);

 for (dd = startdd; dd != ((void*)0); dd = dd->dd_parent) {
  zap_cursor_t basezc;
  zap_attribute_t baseza;
  nvlist_t *sp_nvp;
  uint64_t n;
  char source[ZFS_MAX_DATASET_NAME_LEN];

  if (dsl_dir_phys(dd)->dd_deleg_zapobj == 0 ||
      zap_count(mos,
      dsl_dir_phys(dd)->dd_deleg_zapobj, &n) != 0 || n == 0)
   continue;

  sp_nvp = fnvlist_alloc();
  for (zap_cursor_init(&basezc, mos,
      dsl_dir_phys(dd)->dd_deleg_zapobj);
      zap_cursor_retrieve(&basezc, &baseza) == 0;
      zap_cursor_advance(&basezc)) {
   zap_cursor_t zc;
   zap_attribute_t za;
   nvlist_t *perms_nvp;

   ASSERT(baseza.za_integer_length == 8);
   ASSERT(baseza.za_num_integers == 1);

   perms_nvp = fnvlist_alloc();
   for (zap_cursor_init(&zc, mos, baseza.za_first_integer);
       zap_cursor_retrieve(&zc, &za) == 0;
       zap_cursor_advance(&zc)) {
    fnvlist_add_boolean(perms_nvp, za.za_name);
   }
   zap_cursor_fini(&zc);
   fnvlist_add_nvlist(sp_nvp, baseza.za_name, perms_nvp);
   fnvlist_free(perms_nvp);
  }

  zap_cursor_fini(&basezc);

  dsl_dir_name(dd, source);
  fnvlist_add_nvlist(*nvp, source, sp_nvp);
  nvlist_free(sp_nvp);
 }

 dsl_dir_rele(startdd, FTAG);
 dsl_pool_rele(dp, FTAG);
 return (0);
}
