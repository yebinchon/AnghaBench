
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int nvpair_t ;
typedef int nvlist_t ;
struct TYPE_9__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_10__ {int (* ddura_holdfunc ) (TYPE_1__*,char*,int ,int **) ;void* ddura_chkholds; void* ddura_todelete; int * ddura_errlist; int * ddura_holds; } ;
typedef TYPE_2__ dsl_dataset_user_release_arg_t ;
typedef int dsl_dataset_t ;


 int FTAG ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_SPACE_CHECK_EXTRA_RESERVED ;
 int dsl_dataset_hold (TYPE_1__*,char*,int ,int **) ;
 int dsl_dataset_hold_obj_string (TYPE_1__*,char*,int ,int **) ;
 int dsl_dataset_name (int *,char*) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_dataset_user_release_check ;
 int dsl_dataset_user_release_sync ;
 int dsl_pool_config_enter (TYPE_1__*,int ) ;
 int dsl_pool_config_exit (TYPE_1__*,int ) ;
 int dsl_sync_task (char*,int ,int ,TYPE_2__*,int ,int ) ;
 void* fnvlist_alloc () ;
 int fnvlist_free (void*) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 char* spa_name (int ) ;
 int zfs_unmount_snap (char*) ;

__attribute__((used)) static int
dsl_dataset_user_release_impl(nvlist_t *holds, nvlist_t *errlist,
    dsl_pool_t *tmpdp)
{
 dsl_dataset_user_release_arg_t ddura;
 nvpair_t *pair;
 char *pool;
 int error;

 pair = nvlist_next_nvpair(holds, ((void*)0));
 if (pair == ((void*)0))
  return (0);





 if (tmpdp != ((void*)0)) {

  ddura.ddura_holdfunc = dsl_dataset_hold_obj_string;
  pool = spa_name(tmpdp->dp_spa);
 } else {

  ddura.ddura_holdfunc = dsl_dataset_hold;
  pool = nvpair_name(pair);






 }

 ddura.ddura_holds = holds;
 ddura.ddura_errlist = errlist;
 ddura.ddura_todelete = fnvlist_alloc();
 ddura.ddura_chkholds = fnvlist_alloc();

 error = dsl_sync_task(pool, dsl_dataset_user_release_check,
     dsl_dataset_user_release_sync, &ddura, 0,
     ZFS_SPACE_CHECK_EXTRA_RESERVED);
 fnvlist_free(ddura.ddura_todelete);
 fnvlist_free(ddura.ddura_chkholds);

 return (error);
}
