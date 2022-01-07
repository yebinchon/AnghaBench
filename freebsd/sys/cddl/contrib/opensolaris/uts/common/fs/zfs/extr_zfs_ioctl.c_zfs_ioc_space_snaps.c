
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int nvlist_t ;
typedef int dsl_pool_t ;
struct TYPE_6__ {int ds_is_snapshot; } ;
typedef TYPE_1__ dsl_dataset_t ;


 int EINVAL ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int dsl_dataset_hold (int *,char const*,int ,TYPE_1__**) ;
 int dsl_dataset_rele (TYPE_1__*,int ) ;
 int dsl_dataset_space_wouldfree (TYPE_1__*,TYPE_1__*,int *,int *,int *) ;
 int dsl_pool_hold (char const*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;
 int fnvlist_add_uint64 (int *,char*,int ) ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;

__attribute__((used)) static int
zfs_ioc_space_snaps(const char *lastsnap, nvlist_t *innvl, nvlist_t *outnvl)
{
 int error;
 dsl_pool_t *dp;
 dsl_dataset_t *new, *old;
 char *firstsnap;
 uint64_t used, comp, uncomp;

 if (nvlist_lookup_string(innvl, "firstsnap", &firstsnap) != 0)
  return (SET_ERROR(EINVAL));

 error = dsl_pool_hold(lastsnap, FTAG, &dp);
 if (error != 0)
  return (error);

 error = dsl_dataset_hold(dp, lastsnap, FTAG, &new);
 if (error == 0 && !new->ds_is_snapshot) {
  dsl_dataset_rele(new, FTAG);
  error = SET_ERROR(EINVAL);
 }
 if (error != 0) {
  dsl_pool_rele(dp, FTAG);
  return (error);
 }
 error = dsl_dataset_hold(dp, firstsnap, FTAG, &old);
 if (error == 0 && !old->ds_is_snapshot) {
  dsl_dataset_rele(old, FTAG);
  error = SET_ERROR(EINVAL);
 }
 if (error != 0) {
  dsl_dataset_rele(new, FTAG);
  dsl_pool_rele(dp, FTAG);
  return (error);
 }

 error = dsl_dataset_space_wouldfree(old, new, &used, &comp, &uncomp);
 dsl_dataset_rele(old, FTAG);
 dsl_dataset_rele(new, FTAG);
 dsl_pool_rele(dp, FTAG);
 fnvlist_add_uint64(outnvl, "used", used);
 fnvlist_add_uint64(outnvl, "compressed", comp);
 fnvlist_add_uint64(outnvl, "uncompressed", uncomp);
 return (error);
}
