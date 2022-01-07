
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvpair_t ;
typedef int nvlist_t ;
struct TYPE_3__ {int * dbca_errors; int * dbca_bmarks; } ;
typedef TYPE_1__ dsl_bookmark_create_arg_t ;


 int ZFS_SPACE_CHECK_NORMAL ;
 int dsl_bookmark_create_check ;
 int dsl_bookmark_create_sync ;
 int dsl_sync_task (int ,int ,int ,TYPE_1__*,int ,int ) ;
 int fnvlist_num_pairs (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;

int
dsl_bookmark_create(nvlist_t *bmarks, nvlist_t *errors)
{
 nvpair_t *pair;
 dsl_bookmark_create_arg_t dbca;

 pair = nvlist_next_nvpair(bmarks, ((void*)0));
 if (pair == ((void*)0))
  return (0);

 dbca.dbca_bmarks = bmarks;
 dbca.dbca_errors = errors;

 return (dsl_sync_task(nvpair_name(pair), dsl_bookmark_create_check,
     dsl_bookmark_create_sync, &dbca,
     fnvlist_num_pairs(bmarks), ZFS_SPACE_CHECK_NORMAL));
}
