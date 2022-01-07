
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int nvpair_t ;
struct TYPE_5__ {char const* ddpa_clonename; int err_ds; int cr; int member_0; } ;
typedef TYPE_1__ dsl_dataset_promote_arg_t ;
struct TYPE_7__ {int dp_meta_objset; } ;
struct TYPE_6__ {int ds_snapnames_zapobj; } ;


 int CRED () ;
 int FTAG ;
 int ZFS_SPACE_CHECK_RESERVED ;
 int dmu_objset_ds (int *) ;
 int dmu_objset_hold (char const*,int ,int **) ;
 TYPE_4__* dmu_objset_pool (int *) ;
 int dmu_objset_rele (int *,int ) ;
 TYPE_3__* dsl_dataset_phys (int ) ;
 int dsl_dataset_promote_check ;
 int dsl_dataset_promote_sync ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,scalar_t__,int ) ;
 int fnvlist_alloc () ;
 int fnvlist_free (int ) ;
 int * nvlist_next_nvpair (int ,int *) ;
 int nvpair_name (int *) ;
 int strcpy (char*,int ) ;
 int zap_count (int ,int ,scalar_t__*) ;

int
dsl_dataset_promote(const char *name, char *conflsnap)
{
 dsl_dataset_promote_arg_t ddpa = { 0 };
 uint64_t numsnaps;
 int error;
 nvpair_t *snap_pair;
 objset_t *os;





 error = dmu_objset_hold(name, FTAG, &os);
 if (error != 0)
  return (error);
 error = zap_count(dmu_objset_pool(os)->dp_meta_objset,
     dsl_dataset_phys(dmu_objset_ds(os))->ds_snapnames_zapobj,
     &numsnaps);
 dmu_objset_rele(os, FTAG);
 if (error != 0)
  return (error);

 ddpa.ddpa_clonename = name;
 ddpa.err_ds = fnvlist_alloc();
 ddpa.cr = CRED();

 error = dsl_sync_task(name, dsl_dataset_promote_check,
     dsl_dataset_promote_sync, &ddpa,
     2 + numsnaps, ZFS_SPACE_CHECK_RESERVED);




 snap_pair = nvlist_next_nvpair(ddpa.err_ds, ((void*)0));
 if (snap_pair != ((void*)0) && conflsnap != ((void*)0))
  (void) strcpy(conflsnap, nvpair_name(snap_pair));

 fnvlist_free(ddpa.err_ds);
 return (error);
}
