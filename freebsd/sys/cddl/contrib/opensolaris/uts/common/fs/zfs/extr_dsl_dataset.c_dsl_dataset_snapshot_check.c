
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int nm ;
typedef int dsl_pool_t ;
struct TYPE_6__ {int ds_dir; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_7__ {int * ddsa_errors; int * ddsa_snaps; int ddsa_cr; } ;
typedef TYPE_2__ dsl_dataset_snapshot_arg_t ;
typedef int dmu_tx_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int EINVAL ;
 int ENAMETOOLONG ;
 int FTAG ;
 int MAXPATHLEN ;
 int SET_ERROR (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_SNAPSHOT_LIMIT ;
 scalar_t__ dmu_tx_is_syncing (int *) ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,char*,int ,TYPE_1__**) ;
 int dsl_dataset_rele (TYPE_1__*,int ) ;
 int dsl_dataset_snapshot_check_impl (TYPE_1__*,char*,int *,int ,int ,int *) ;
 int dsl_fs_ss_limit_check (int ,scalar_t__,int ,int *,int ) ;
 int fnvlist_add_int32 (int *,char*,int) ;
 int fnvlist_add_uint64 (int *,char*,int) ;
 int * fnvlist_alloc () ;
 scalar_t__ fnvpair_value_uint64 (int *) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_uint64 (int *,char*,scalar_t__*) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

int
dsl_dataset_snapshot_check(void *arg, dmu_tx_t *tx)
{
 dsl_dataset_snapshot_arg_t *ddsa = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 nvpair_t *pair;
 int rv = 0;
 if (dmu_tx_is_syncing(tx)) {
  nvlist_t *cnt_track = ((void*)0);
  cnt_track = fnvlist_alloc();


  for (pair = nvlist_next_nvpair(ddsa->ddsa_snaps, ((void*)0));
      pair != ((void*)0);
      pair = nvlist_next_nvpair(ddsa->ddsa_snaps, pair)) {
   char *pdelim;
   uint64_t val;
   char nm[MAXPATHLEN];

   (void) strlcpy(nm, nvpair_name(pair), sizeof (nm));
   pdelim = strchr(nm, '@');
   if (pdelim == ((void*)0))
    continue;
   *pdelim = '\0';

   do {
    if (nvlist_lookup_uint64(cnt_track, nm,
        &val) == 0) {

     fnvlist_add_uint64(cnt_track, nm,
         val + 1);
    } else {

     fnvlist_add_uint64(cnt_track, nm, 1);
    }

    pdelim = strrchr(nm, '/');
    if (pdelim != ((void*)0))
     *pdelim = '\0';
   } while (pdelim != ((void*)0));
  }


  for (pair = nvlist_next_nvpair(cnt_track, ((void*)0));
      pair != ((void*)0); pair = nvlist_next_nvpair(cnt_track, pair)) {
   int error = 0;
   char *name;
   uint64_t cnt = 0;
   dsl_dataset_t *ds;

   name = nvpair_name(pair);
   cnt = fnvpair_value_uint64(pair);
   ASSERT(cnt > 0);

   error = dsl_dataset_hold(dp, name, FTAG, &ds);
   if (error == 0) {
    error = dsl_fs_ss_limit_check(ds->ds_dir, cnt,
        ZFS_PROP_SNAPSHOT_LIMIT, ((void*)0),
        ddsa->ddsa_cr);
    dsl_dataset_rele(ds, FTAG);
   }

   if (error != 0) {
    if (ddsa->ddsa_errors != ((void*)0))
     fnvlist_add_int32(ddsa->ddsa_errors,
         name, error);
    rv = error;

    break;
   }
  }
  nvlist_free(cnt_track);
 }

 for (pair = nvlist_next_nvpair(ddsa->ddsa_snaps, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(ddsa->ddsa_snaps, pair)) {
  int error = 0;
  dsl_dataset_t *ds;
  char *name, *atp;
  char dsname[ZFS_MAX_DATASET_NAME_LEN];

  name = nvpair_name(pair);
  if (strlen(name) >= ZFS_MAX_DATASET_NAME_LEN)
   error = SET_ERROR(ENAMETOOLONG);
  if (error == 0) {
   atp = strchr(name, '@');
   if (atp == ((void*)0))
    error = SET_ERROR(EINVAL);
   if (error == 0)
    (void) strlcpy(dsname, name, atp - name + 1);
  }
  if (error == 0)
   error = dsl_dataset_hold(dp, dsname, FTAG, &ds);
  if (error == 0) {

   error = dsl_dataset_snapshot_check_impl(ds,
       atp + 1, tx, B_FALSE, 0, ((void*)0));
   dsl_dataset_rele(ds, FTAG);
  }

  if (error != 0) {
   if (ddsa->ddsa_errors != ((void*)0)) {
    fnvlist_add_int32(ddsa->ddsa_errors,
        name, error);
   }
   rv = error;
  }
 }

 return (rv);
}
