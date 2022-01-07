
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dds_inconsistent; } ;
struct TYPE_5__ {scalar_t__ zc_nvlist_dst; TYPE_4__ zc_objset_stats; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int objset_t ;
typedef int nvlist_t ;


 scalar_t__ DMU_OST_ZVOL ;
 int EIO ;
 int VERIFY0 (int) ;
 int dmu_objset_fast_stat (int *,TYPE_4__*) ;
 int dmu_objset_stats (int *,int *) ;
 scalar_t__ dmu_objset_type (int *) ;
 int dsl_prop_get_all (int *,int **) ;
 int nvlist_free (int *) ;
 int put_nvlist (TYPE_1__*,int *) ;
 int zvol_get_stats (int *,int *) ;

__attribute__((used)) static int
zfs_ioc_objset_stats_impl(zfs_cmd_t *zc, objset_t *os)
{
 int error = 0;
 nvlist_t *nv;

 dmu_objset_fast_stat(os, &zc->zc_objset_stats);

 if (zc->zc_nvlist_dst != 0 &&
     (error = dsl_prop_get_all(os, &nv)) == 0) {
  dmu_objset_stats(os, nv);







  if (!zc->zc_objset_stats.dds_inconsistent &&
      dmu_objset_type(os) == DMU_OST_ZVOL) {
   error = zvol_get_stats(os, nv);
   if (error == EIO)
    return (error);
   VERIFY0(error);
  }
  error = put_nvlist(zc, nv);
  nvlist_free(nv);
 }

 return (error);
}
