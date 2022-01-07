
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zbm_creation_txg; } ;
typedef TYPE_1__ zfs_bookmark_phys_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int boolean_t ;


 int EINVAL ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int dmu_send_estimate (int *,int *,int ,int *) ;
 int dmu_send_estimate_from_txg (int *,int ,int ,int *) ;
 int dsl_bookmark_lookup (int *,char*,int *,TYPE_1__*) ;
 int dsl_dataset_hold (int *,char const*,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_pool_hold (char const*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;
 int fnvlist_add_uint64 (int *,char*,int ) ;
 int nvlist_exists (int *,char*) ;
 int nvlist_lookup_string (int *,char*,char**) ;
 int * strchr (char*,char) ;

__attribute__((used)) static int
zfs_ioc_send_space(const char *snapname, nvlist_t *innvl, nvlist_t *outnvl)
{
 dsl_pool_t *dp;
 dsl_dataset_t *tosnap;
 int error;
 char *fromname;
 boolean_t compressok;
 uint64_t space;

 error = dsl_pool_hold(snapname, FTAG, &dp);
 if (error != 0)
  return (error);

 error = dsl_dataset_hold(dp, snapname, FTAG, &tosnap);
 if (error != 0) {
  dsl_pool_rele(dp, FTAG);
  return (error);
 }

 compressok = nvlist_exists(innvl, "compressok");

 error = nvlist_lookup_string(innvl, "from", &fromname);
 if (error == 0) {
  if (strchr(fromname, '@') != ((void*)0)) {





   dsl_dataset_t *fromsnap;
   error = dsl_dataset_hold(dp, fromname, FTAG, &fromsnap);
   if (error != 0)
    goto out;
   error = dmu_send_estimate(tosnap, fromsnap, compressok,
       &space);
   dsl_dataset_rele(fromsnap, FTAG);
  } else if (strchr(fromname, '#') != ((void*)0)) {





   zfs_bookmark_phys_t frombm;

   error = dsl_bookmark_lookup(dp, fromname, tosnap,
       &frombm);
   if (error != 0)
    goto out;
   error = dmu_send_estimate_from_txg(tosnap,
       frombm.zbm_creation_txg, compressok, &space);
  } else {




   error = SET_ERROR(EINVAL);
   goto out;
  }
 } else {



  error = dmu_send_estimate(tosnap, ((void*)0), compressok, &space);
 }

 fnvlist_add_uint64(outnvl, "space", space);

out:
 dsl_dataset_rele(tosnap, FTAG);
 dsl_pool_rele(dp, FTAG);
 return (error);
}
